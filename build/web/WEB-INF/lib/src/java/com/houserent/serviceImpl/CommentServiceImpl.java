/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.houserent.serviceImpl;

import com.houserent.dao.CommentDAO;
import com.houserent.pojo.Comment;
import com.houserent.service.CommentService;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentDAO dao;

    @Override
    public List<Comment> getHouseCommentByHnumber(Integer Hnumber) { 
        return dao.getAll(Hnumber);
    }

    @Override
    public void addHouseComment(Comment comment) {
        dao.insert(comment);
    }

}
