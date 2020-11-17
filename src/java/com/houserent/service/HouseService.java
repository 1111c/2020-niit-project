/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.houserent.service;

import com.houserent.pojo.House;
import java.util.List;
   
public interface HouseService {

    /**
     * 根据 房屋ID 获取一个 房屋 的所有信息
     */
    House getHouseByHnumber(Integer Hnumber);

    
    /**
     * 根据 房屋图片 获取一个 房屋 的所有信息
     */
    House getHouseByHpicture(String  Picture);
    
     /**
     * 根据 房屋所在城市  获取一个 房屋 的所有信息
     */
    List<House> getHouseByCity(String Hcity );

    
    /**
     * 获取所有房屋的列表
     */
    List getHouseList();

    /**
     * ，模糊查询所有房屋的列表
     */
    List getHouses( String textContext);
    
    /**
     * 添加一个新房屋
     */
    void addHouse(House house);

    /**
     * 更新一个新房屋
     */
    void updateHouse(House house);

    /**
     * 根据 房屋名 删除一个 用户
     */
    void deleteHouse(Integer Hnumber);
 
}
