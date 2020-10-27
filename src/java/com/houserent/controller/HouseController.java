/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.houserent.controller;

import com.houserent.pojo.House;
import com.houserent.service.HouseService;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class HouseController {

    @Autowired
    private HouseService houseService;

    
    @RequestMapping(value = "/searchHouseByCity.do", method = RequestMethod.GET, produces = "text/html;charset=utf-8")
    @ResponseBody
    public String searchUserByName(
            @RequestParam(value = "page") int page, @RequestParam(value = "limit") int limit,
            @RequestParam(value = "UName") String UName, @RequestParam(value = "selection") String selection
    ) {
        
        System.out.println(selection);

        House house = null;
        if (  selection.equals("房屋Id") ) {
              // user  = userService.getUserByUserName(UName);
              house = houseService.getHouseByHnumber( Integer.parseInt( UName )  );
        } else if (selection.equals("所在城市")) {
              //user = userService.getOneByUserPhone(UName);
              house  = houseService.getHouseByCity(UName);
        }  

        //带参数从数据库里查询出来放到list的集合里 
        List<House> hlist = new LinkedList<>();
        hlist.add( house );
        int count = 1;
        //用json来传值
        JSONArray json = JSONArray.fromObject(hlist);
        String js = json.toString();
        //*****转为layui需要的json格式，必须要这一步，博主也是没写这一步，在页面上数据就是数据接口异常
        String jso = "{\"code\":0,\"msg\":\"\",\"count\":" + count + ",\"data\":" + js + "}";
        return jso;
    }
    
    
    @RequestMapping("/searchAllHouse.do")
    @ResponseBody
    public String searchAllHouse(HttpServletRequest request, HttpServletResponse response) {
        // request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        //带参数从数据库里查询出来放到houselist的集合里
        List<House> houselist = houseService.getHouseList();

        int count = houselist.size();
        //用json来传值
        JSONArray json = JSONArray.fromObject(houselist);
        String js = json.toString();
        System.out.println(js);
        //*****转为layui需要的json格式，必须要这一步，博主也是没写这一步，在页面上数据就是数据接口异常
        String jso = "{\"code\":0,\"msg\":\"\",\"count\":" + count + ",\"data\":" + js + "}";
        return jso;
    }

    //用户注册的请求：如果请求参数与pojo类中的属性的参数一致，自动封装为一个实体
    @RequestMapping(value = "/addHouse.do", method = RequestMethod.POST)
    public String addHouse(House house) {
        System.out.println(house.getHpicture());
        houseService.addHouse(house);
        return "success";
    }

    @RequestMapping(value = "/deleteHouse.do", method = RequestMethod.POST)
    @ResponseBody
    public String deleteHouse(Integer Hnumber) {
        System.out.println("Hnumber:" + Hnumber);
        houseService.deleteHouse(Hnumber);
        //带参数从数据库里查询出来放到houselist的集合里
        List<House> houselist = houseService.getHouseList();

        int count = houselist.size();
        //用json来传值
        JSONArray json = JSONArray.fromObject(houselist);
        String js = json.toString();
        System.out.println(js);
        //*****转为layui需要的json格式，必须要这一步，博主也是没写这一步，在页面上数据就是数据接口异常
        String jso = "{\"code\":0,\"msg\":\"\",\"count\":" + count + ",\"data\":" + js + "}";
        return jso;

    }

    @RequestMapping(value = "/updateHouse.do", method = RequestMethod.POST)
    @ResponseBody
    public String updateHouse(@RequestBody Map<String, Object> data) {

        House house = new House();
        house.setHnumber(  Integer.parseInt( (String)data.get("Hnumber") ) );
        house.setHpicture((String) data.get("Hpicture"));
        house.setHcity((String) data.get("Hcity"));
        house.setHcname((String) data.get("Hcname"));
        house.setHarea((String) data.get("Harea"));
        house.setLno((String) data.get("Lno"));
        house.setUno((String) data.get("Uno"));
        house.setGno((String) data.get("Gno"));
        house.setHrentprice(  Float.parseFloat( (String)data.get("Hrentprice") ) );
        house.setHowner((String) data.get("Howner"));
        house.setHphone((String) data.get("Hphone"));

//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMddHHmmss");
//        //现在默认当前系统时间
//        String nows = sdf.format(new Date()); 
        house.setHcreatetime((String) data.get("Hcreatetime"));
        house.setHisrenting((String) data.get("Hisrenting"));
        house.setHdescription((String) data.get("Hdescription"));
//        user.setUName((String) data.get("UName"));
//        user.setUPicture((String) data.get("UPicture"));
//        user.setUPhone((String) data.get("UPhone"));
//        user.setUEmail((String) data.get("UEmail"));
//        user.setUBirthday((String) data.get("UBirthday"));
//        user.setUGender((String) data.get("UGender"));
//        user.setUPassword((String) data.get("UPassword"));
//        userService.updateUser(user);

        System.out.println(" Hnumber :" + house.getHnumber() + "time: " + house.getHcreatetime());

        houseService.updateHouse(house);
        //带参数从数据库里查询出来放到houselist的集合里
        List<House> houselist = houseService.getHouseList();

        int count = houselist.size();
        //用json来传值
        JSONArray json = JSONArray.fromObject(houselist);
        String js = json.toString();
        System.out.println(js);
        //*****转为layui需要的json格式，必须要这一步，博主也是没写这一步，在页面上数据就是数据接口异常
        String jso = "{\"code\":0,\"msg\":\"\",\"count\":" + count + ",\"data\":" + js + "}";
        return jso;

    }

    //图片上传测试
    @RequestMapping("/uploadHouse")
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
