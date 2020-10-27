package com.houserent.daoImpl;

import com.houserent.dao.UserDAO;
import com.houserent.pojo.User;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO {

    /*SessionFactory已经注册为Spring的bean
     如果要使用Spring中的事务，就建议使用getCurrentSession获取Session
     getCurrentSession()不需要手动关闭session,自动会关闭，如果已经有创建session，不需要重复创建；
     openSession()需要你手动关闭session，而且每执行一个操作，就需要创建一个session，如果不手动关闭session
     就会出现连接池溢出，程序异常
     openSession()方法只需要给插入、删除、修改的方法添加事务，保证数据的完整性
     getCurrentSession()方法不仅需要给插入、删除、修改的方法添加事务，还需要给查询的各种方法添加事务
     */
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void insert(User user) {
        Session session = sessionFactory.getCurrentSession();
        //session.beginTransaction(); 
        session.save(user);
        //session.getTransaction().commit(); 
        //session.close();
    }

    @Override
    public void update(User user) {
        Session session = sessionFactory.openSession();//.getCurrentSession();
        session.beginTransaction();
        session.update(user);
        session.getTransaction().commit();
        System.out.println("UserName : " + user.getUPicture());
        user = (User) session.get(User.class, user.getUName());
        System.out.println("UserName : " + user.getUPicture());
        session.close();

    }

    @Override
    public List<User> getAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from User");
        List list = query.list();
        return list;
    }

    @Override
    public void deleteByUserName(String UserName) {
        User user = new User();
        user.setUName(UserName); //session必须根据数据库的主键删除       
        System.out.println(UserName);
        Session session = sessionFactory.openSession();
        session.delete(user);
        session.beginTransaction().commit();
        session.close();
    }

    @Override
    public User getOneByUserName(String UserName) {
        Session session = sessionFactory.getCurrentSession();
        User user = (User) session.get(User.class, UserName);
        //session.close();
        System.out.println("我是查询的一个User");
        return user;
    }

    @Override
    public User getOneByUserNameandPassWord(String UserName, String UserPassword) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from User where UName=:UName and UPassword=:UPassword");
        query.setParameter("UName", UserName);
        query.setParameter("UPassword", UserPassword);
        List list = query.list();
        if (list.size() != 0) {
            return (User) list.get(0);
        }

        query = session.createQuery("from User where UPhone=:UPhone and UPassword=:UPassword");
        query.setParameter("UPhone", UserName);
        query.setParameter("UPassword", UserPassword);
        list = query.list();
        if (list.size() != 0) {
            return (User) list.get(0);
        }

        query = session.createQuery("from User where UEmail=:UEmail and UPassword=:UPassword");
        query.setParameter("UEmail", UserName);
        query.setParameter("UPassword", UserPassword);
        list = query.list();
        if (list.size() != 0) {
            return (User) list.get(0);
        } else {
            return null;
        }
    }

    @Override
    public User getOneByUserEmail(String Email) {
        Session session = sessionFactory.getCurrentSession();
        String hql = "from User where UEmail =:UEmail";
        Query query = session.createQuery(hql);
        query.setString("UEmail", Email);
        List<User> list = query.list();
        //session.close();
        System.out.println("我是查询的一个User");
        if (list != null) {
            return list.get(0);
        } else {
            return null;
        }
    }

    @Override
    public User getOneByUserPhone(String Phone) {

        System.out.println(Phone); 
        Session session = sessionFactory.getCurrentSession();
        String hql = "from User where UPhone =:UPhone";
        Query query = session.createQuery(hql);
        query.setString("UPhone", Phone);
        List<User> list = query.list();
        //session.close();
        System.out.println("我是查询的一个User");
        if (list != null) {
            return list.get(0);
        } else {
            return null;
        } 
    }

}
