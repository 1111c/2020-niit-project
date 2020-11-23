/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.houserent.daoImpl;

import com.houserent.dao.ReplyDAO;
import com.houserent.pojo.Comment;
import com.houserent.pojo.Reply;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
 
@Repository
public class ReplyDAOImpl implements ReplyDAO {  

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void insert(Reply reply) {
        Session session = sessionFactory.openSession();
        session.save(reply);
        session.close();
    }

    @Override
    public List<Reply> getAll(Integer Cid) {
        Session session = sessionFactory.openSession();
        String hql = "from Reply where Cid =:Cid";
        Query query = session.createQuery(hql);
        query.setInteger("Cid", Cid);
        List<Reply> list = query.list();
        return list; 
    }

}
