/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.houserent.controller;

import com.houserent.pojo.Reply;
import com.houserent.service.ReplyService;
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

@Controller
public class ReplyController {
    
    @Autowired
    private ReplyService replyService;
    
    @RequestMapping(value = "/addReply.do", method = RequestMethod.POST ,produces = "text/html;charset=utf-8")
    public String addComment(Reply reply , HttpServletRequest request  ,HttpServletResponse response ) {
        
        replyService.addHouseCommentReply(reply);
        List<Reply> lr = replyService.getCommentReplyByCid( reply.getCid()  ) ;
        lr.add(reply);
        request.getSession().setAttribute("lr", lr); //回复集合
        request.getSession().setMaxInactiveInterval(5);
     
        //获取当前时间
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String datetime = simpleDateFormat.format(date);
        request.getSession().setAttribute("datetime", datetime); 
        return "redirect:/ShowHouse.do";
    }
    
}
