/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.houserent.daoImpl;

import com.houserent.dao.HouseDAO;
import com.houserent.pojo.House;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HouseDAOImpl implements HouseDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void insert(House  house){        
        Session session = sessionFactory.getCurrentSession();
        //session.beginTransaction(); 
        session.save(house);
        session.close(); 
        //session.getTransaction().commit();  
    }

    @Override
    public void update(House  house) {

    }

    @Override
    public List<House> getAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from House");
        List list = query.list();
//        session.close();
        return list;
    }

    @Override
    public void deleteByHnumber(Integer Hnumber) {

    }

    @Override
    public House getOneByHnumber(Integer Hnumber) {

        Session session = sessionFactory.getCurrentSession();
        House house = (House) session.get(House.class, Hnumber);
//      session.close();
        return house;
    }

}
