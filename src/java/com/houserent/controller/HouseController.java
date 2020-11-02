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
import java.util.Map;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author 52976
 */
@Controller
public class HouseController {
    
    @Autowired
    private HouseService houseService;

    //用户注册的请求：如果请求参数与pojo类中的属性的参数一致，自动封装为一个实体
    @RequestMapping(value = "/addHouse.do",method = RequestMethod.POST)
    public String addHouse(House house) { 
           System.out.println(house.getHpicture());
           houseService.addHouse(house);
           return "success";
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
