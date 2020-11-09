/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.houserent.dao;

import com.houserent.pojo.Comment;
import java.util.List;

/**
 *
 * @author 52976
 */
public interface CommentDAO {
    
     //传入一个包含新房屋信息的User对象，插入新房屋到数据库
    void insert(Comment  house);
 
    //获取所有房屋的列表
    List<Comment > getAll( Integer Hnumber  );
    
}
