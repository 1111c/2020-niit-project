package com.houserent.controller;

import com.alibaba.fastjson.JSONArray;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
 
    @RequestMapping("/{pagename}")
    public String ToPage(@PathVariable("pagename") String jspName  ) {
        return jspName ;
    } 
    
    @RequestMapping("/signout")
    public String SignOut( HttpServletRequest request   ) {
        request.getSession().setAttribute("user", null);
        request.getSession().setAttribute("UName", null);
        return "index" ;
    } 
    
    

}
