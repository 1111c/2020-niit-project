/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.houserent.service;

import com.houserent.pojo.Reply;
import java.util.List;

public  interface ReplyService {
    
    
     /**
     * 根据 房屋ID 获取一个 房屋 的所有评论
     */
     List<Reply> getCommentReplyByCid(Integer Cid);

       /**
     * 添加一个新房屋
     */
     void addHouseCommentReply( Reply reply );
   
    
}
