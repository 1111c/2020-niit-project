package com.houserent.dao;
import com.houserent.pojo.User;
import java.util.List;

/**
 * UserDAO接口，定义对User表的CRUD（增删改查）操作
 */
public interface UserDAO {

    //传入一个包含新用户信息的User对象，插入新用户到数据库
    void insert(User user);

    //传入一个包含更新后的拥护信息的User对象，更新拥护信息到数据库
    void update(User user);

    //根据用户id 删除单个用户
    void deleteByUserName(String UserName);

    //根据用户id查询单个用户
    User getOneByUserName(String UserName  );

    //验证用户
    User getOneByUserNameandPassWord(String UserName ,String UserPassword);

    User getOneByUserEmail( String Email ); 
    
    User getOneByUserPhone( String Phone );
    
    //获取所有用户的列表
    List<User> getAll();
 

}
