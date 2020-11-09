/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.houserent.service; 
import com.houserent.pojo.Comment;
import java.util.List;
public interface CommentService {
    
     /**
     * 根据 房屋ID 获取一个 房屋 的所有评论
     */
     List<Comment> getHouseCommentByHnumber(Integer Hnumber);

       /**
     * 添加一个新评论
     */
     void addHouseComment( Comment comment );
   
    
    
}
