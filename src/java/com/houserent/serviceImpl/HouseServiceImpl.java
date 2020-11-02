/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.houserent.serviceImpl;

import com.houserent.dao.HouseDAO;
import com.houserent.pojo.House;
import com.houserent.service.HouseService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author 52976
 */
@Service
public class HouseServiceImpl implements  HouseService{

    @Autowired
    private HouseDAO dao;

    
    @Override
    public House getHouseByHnumber(Integer Hnumber) {
        return dao.getOneByHnumber(Hnumber);
    }

    @Override
    public List getHouseList() {
        return dao.getAll();
    }

    @Override
    public void addHouse(House house) {
        dao.insert(house);
    }

    @Override
    public void updateHouse(House house) {
        dao.update(house);
    }

    @Override
    public void deleteHouse(Integer Hnumber) {
        dao.deleteByHnumber(Hnumber);
    }
    
}
