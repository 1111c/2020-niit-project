package com.houserent.service;
import com.houserent.pojo.User;
import java.util.List;
public interface UserService {
    
     
     /**
     * 根据   用户名  获取一个  用户 的所有信息 
     */
    User getUserByUserName(String userName);
    User getOneByUserEmail( String Email ); 
    
    User getOneByUserPhone( String Phone );
    /**
     * 获取所有用户的列表   
     */ 
    List getUserList();
 
    /**
     * 添加一个新用户
     */
    void addUser(User user);

    /**
     * 更新一个新用户
     */
    void updateUser(User user);

    /**
     * 根据 用户名 删除一个  用户
     */
    void deleteUser(String userName);

    /**
     * 根据页码和页面记录大小获取指定页的记录
     *
     * @param pageNumber
     * @param pageSize
     * @return 一个列表，列表中包含本页应该显示的所有用户
     */
    List getListByPageNumberAndSize(int pageNumber, int pageSize);
    
    /** 
     * @return 一个用户对象，登录验证返回单个用户对象
     */
    User validateLogin(String userName , String  userPassword );
    
    
  
    
    
    
}
