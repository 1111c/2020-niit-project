/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.houserent.controller;

import com.houserent.pojo.Comment;
import com.houserent.service.CommentService;
import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CommentController {
    
    @Autowired
    private CommentService commentService;
    //@ResponseBody
    @RequestMapping(value = "/addComment.do", method = RequestMethod.POST ,produces = "text/html;charset=utf-8")
    public String addComment(Comment comment , HttpServletRequest request  ,HttpServletResponse response  )   {
  
        commentService.addHouseComment(comment);
        List<Comment> lc = (List<Comment>) commentService.getHouseCommentByHnumber(  comment.getHnumber()  ) ;
        
        request.getSession().setAttribute("lc", lc); 
        request.getSession().setAttribute("Cid", comment.getId());
        //获取当前时间
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String datetime = simpleDateFormat.format(date);
        request.getSession().setAttribute("datetime", datetime); 
        return "redirect:/ShowHouse.do";
    }
    
    
}
