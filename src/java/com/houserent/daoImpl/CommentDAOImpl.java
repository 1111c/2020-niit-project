/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.houserent.daoImpl;

import com.houserent.dao.CommentDAO;
import com.houserent.pojo.Comment;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;  

@Repository
public class CommentDAOImpl implements CommentDAO {
 
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void insert(Comment comment) {

        Session session = sessionFactory.openSession();
        session.save(comment);
        session.close();

    }

    @Override
    public List<Comment> getAll(Integer Hnumber) { 
        Session session = sessionFactory.openSession();
        String hql = "from Comment where Hnumber =:Hnumber";
        Query query = session.createQuery(hql);
        query.setInteger("Hnumber", Hnumber);
        List<Comment> list = query.list();
        return list; 
    }

}
