package com.houserent.controller; 
import com.houserent.pojo.User;
import com.houserent.service.UserService;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    //用户注册的请求：如果请求参数与pojo类中的属性的参数一致，自动封装为一个实体
    @RequestMapping("/register.do")
    public String register(User user) {
        System.out.println(user.getUPicture());
        userService.addUser(user);
        return "Login";
    }

    @RequestMapping(value = "/updateUser.do", method = RequestMethod.POST)
    @ResponseBody
    public String updateUser(@RequestBody Map<String, Object> data) {
        User user = new User();
        user.setUName((String) data.get("UName"));
        user.setUPicture((String) data.get("UPicture"));
        user.setUPhone((String) data.get("UPhone"));
        user.setUEmail((String) data.get("UEmail"));
        user.setUBirthday((String) data.get("UBirthday"));
        user.setUGender((String) data.get("UGender"));
        user.setUPassword((String) data.get("UPassword"));
        userService.updateUser(user);
        //带参数从数据库里查询出来放到ulist的集合里
        List<User> ulist = new LinkedList<>();
        ulist.add(user);
        int count = 1;
        //用json来传值
        JSONArray json = JSONArray.fromObject(ulist);
        String js = json.toString();
        //*****转为layui需要的json格式，必须要这一步，博主也是没写这一步，在页面上数据就是数据接口异常
        String jso = "{\"code\":0,\"msg\":\"\",\"count\":" + count + ",\"data\":" + js + "}";
        return jso;
    }

    @RequestMapping(value = "/deleteUser.do", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
    @ResponseBody
    public String deleteUser(String UName) {
        User user = new User();
        user.setUName(UName);
        System.out.println(user.getUName());
        userService.deleteUser(user.getUName());
        //带参数从数据库里查询出来放到ulist的集合里
        List<User> ulist = null;
        int count = 0;
        //用json来传值
        JSONArray json = JSONArray.fromObject(ulist);
        String js = json.toString();
        //*****转为layui需要的json格式，必须要这一步，博主也是没写这一步，在页面上数据就是数据接口异常
        String jso = "{\"code\":0,\"msg\":\"\",\"count\":" + count + ",\"data\":" + js + "}";
        return jso;
    }

    @RequestMapping(value = "/searchUserByName.do", method = RequestMethod.GET, produces = "text/html;charset=utf-8")
    @ResponseBody
    public String searchUserByName(
            @RequestParam(value = "page") int page, @RequestParam(value = "limit") int limit,
            @RequestParam(value = "UName") String UName, @RequestParam(value = "selection") String selection
    ) {
        System.out.println(selection);

        User user = null;
        if (selection.equals("用户昵称")) {
            user = userService.getUserByUserName(UName);
        } else if (selection.equals("用户电话")) {
            user = userService.getOneByUserPhone(UName);
        } else if (selection.equals("用户邮箱")) {
            user = userService.getOneByUserEmail(UName);
        }

        //带参数从数据库里查询出来放到ulist的集合里
        System.out.println("userName: " + UName);
        List<User> ulist = new LinkedList<>();
        ulist.add(user);
        int count = 1;
        //用json来传值
        JSONArray json = JSONArray.fromObject(ulist);
        String js = json.toString();
        //*****转为layui需要的json格式，必须要这一步，博主也是没写这一步，在页面上数据就是数据接口异常
        String jso = "{\"code\":0,\"msg\":\"\",\"count\":" + count + ",\"data\":" + js + "}";
        return jso;
    }

    @RequestMapping("/searchAll.do")
    @ResponseBody
    public String searchAll() {
        //带参数从数据库里查询出来放到ulist的集合里
        List<User> ulist = userService.getUserList();
        int count = ulist.size();
        //用json来传值
        JSONArray json = JSONArray.fromObject(ulist);
        String js = json.toString();
        //*****转为layui需要的json格式，必须要这一步，博主也是没写这一步，在页面上数据就是数据接口异常
        String jso = "{\"code\":0,\"msg\":\"\",\"count\":" + count + ",\"data\":" + js + "}";
        return jso;
    }

    // 登录的主要作用： 验证登录信息
    // 登陆验证的请求 
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String volidateLogin(String status, String userName, String userPsw, Model model) {
        model.addAttribute("status", status);
        User user = userService.validateLogin(userName, userPsw);
        if (user == null) {
            return "fail";
        } else {
            model.addAttribute("user", user);
            if (status.equals("普通用户")) {
                return "OpenrsAdmin";
            } else {
                return "OpenrsAdmin";
            }
        }
    }

    //图片上传测试
    @RequestMapping("/upload")
    @ResponseBody
    public Map upload(MultipartFile file, HttpServletRequest request) {

        String prefix = "";
        String dateStr = "";
        //保存上传
        OutputStream out = null;

        InputStream fileInput = null;
        try {
            if (file != null) {
                String originalName = file.getOriginalFilename();
                prefix = originalName.substring(originalName.lastIndexOf(".") + 1);
                Date date = new Date();
                String uuid = UUID.randomUUID() + "";
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                dateStr = simpleDateFormat.format(date);
                //String filepath = "D:\\mycode\\LayUiTest\\src\\main\\resources\\static\\images\\" + dateStr + "\\" + uuid + "." + prefix;
//                System.out.println("classpath:" + ResourceUtils.getURL("classpath:").getPath());
//                //项目所在源包路径
//                String locationpath = ResourceUtils.getURL("classpath:").getPath();
//                System.out.println(locationpath);
//                 
                String filepath = "C:\\Users\\52976\\Desktop\\2019下学期项目\\MyProject\\HouseRent\\web\\uploadImage\\" + uuid + "." + prefix;

                File files = new File(filepath);
                //打印查看上传路径
                System.out.println(filepath);
                if (!files.getParentFile().exists()) {
                    files.getParentFile().mkdirs();
                }
                file.transferTo(files);
                Map<String, Object> map2 = new HashMap<>();
                Map<String, Object> map = new HashMap<>();
                map.put("code", 0);
                map.put("msg", "");
                map.put("data", map2);
                //map2.put("src", "/images/" + "/" + uuid + "." + prefix); 
                map2.put("src", "uploadImage/" + uuid + "." + prefix);

                return map;
            }

        } catch (Exception e) {
        } finally {
            try {
                if (out != null) {
                    out.close();
                }
                if (fileInput != null) {
                    fileInput.close();
                }
            } catch (IOException e) {
            }
        }
        Map<String, Object> map = new HashMap<>();
        map.put("code", 1);
        map.put("msg", "");
        return map;

    }

}
