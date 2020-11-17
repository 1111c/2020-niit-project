  /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.houserent.serviceImpl;

import com.houserent.dao.UserDAO;
import com.houserent.pojo.User;
import com.houserent.service.UserService;
import com.houserent.service.UserService;
import java.io.FileNotFoundException;
import java.io.IOException; 
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * 事务可以使用在Dao层，也可以使用在Service层，框架集成之后，建议使用在Service层
 *
 * @Transactional注解：该注解指定事务的策略，既可以使用在类之前，也可以使用在方法之前 如果使用在类前，那么就意味着该类所有的方法使用同一事务
 *
 */
// 注册为Bean
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO dao;

    @Override
    public User getUserByUserName(String userName) {
        return dao.getOneByUserName(userName);
    }

    @Override
    public User getOneByUserEmail(String Email) {
       return dao.getOneByUserEmail(Email); 
    }

    @Override
    public User getOneByUserPhone(String Phone) {
       return dao.getOneByUserPhone(Phone);
    }

    @Override
    public List getUserList() {
        return dao.getAll();
    }

    
    
    @Transactional(propagation = Propagation.REQUIRED, timeout = 10)
    @Override
    public void addUser(User user) {
        dao.insert(user);
    }

    
    
    
    
    
    @Override
    public void updateUser(User user) {
        dao.update(user);
    }

    @Override
    public void deleteUser(String userName) {
        dao.deleteByUserName(userName);
    }

    @Override
    public List getListByPageNumberAndSize(int pageNumber, int pageSize) {
        return dao.getAll();
    }

    @Override
    public User validateLogin(String userName, String userPassword) {

        return dao.getOneByUserNameandPassWord(userName, userPassword);

    }

}
