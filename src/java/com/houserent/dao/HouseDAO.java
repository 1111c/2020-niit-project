/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.houserent.dao;

import com.houserent.pojo.House;
import java.util.List;

/**
 *
 * @author 52976
 */
public interface HouseDAO  {
     //传入一个包含新房屋信息的User对象，插入新房屋到数据库
    void insert(House  house);

    //传入一个包含更新后的拥护信息的House对象，更新拥护信息到数据库
    void update(House  house);

    //根据房屋id 删除单个房屋
    void deleteByHnumber(Integer Hnumber);

    //根据房屋id查询单个房屋
    House getOneByHnumber(Integer Hnumber  );
 
    //获取所有房屋的列表
    List<House> getAll();
}
