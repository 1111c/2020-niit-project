/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.houserent.pojo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;   
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "House")
public class House implements Serializable {
//    @Id                        
//    @GeneratedValue(generator = "pkAssigned")
//    @GenericGenerator(name="pkAssigned",strategy = "assigned")

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer Hnumber;        //房产号
    private String  Hpicture;       //图片
    private String Hcity;         //城市
    private String Hcname;        //小区名
    private String Harea;         //房屋实际面积面积
    private String Lno;           //楼号 
    private String Uno;           //单元号
    private String Gno;           //Gno门牌号 
    private Float Hrentprice;	  //出租价格
    private String Howner;        //房屋主人
    private String Hphone;        //手机号 
    private String Houseimg;      //房产图片 
    private String Hcreatetime;   //房产录入时间
    private String Hisrenting;    //房产是否租赁 
    private String Hdescription;  //房产描述

    public House() {
    }

    public House(Integer Hnumber, String Hpicture, String Hcity, String Hcname, String Harea, String Lno, String Uno, String Gno, Float Hrentprice, String Howner, String Hphone, String Houseimg, String Hcreatetime, String Hisrenting, String Hdescription) {
        this.Hnumber = Hnumber;
        this.Hpicture = Hpicture;
        this.Hcity = Hcity;
        this.Hcname = Hcname;
        this.Harea = Harea;
        this.Lno = Lno;
        this.Uno = Uno;
        this.Gno = Gno;
        this.Hrentprice = Hrentprice;
        this.Howner = Howner;
        this.Hphone = Hphone;
        this.Houseimg = Houseimg;
        this.Hcreatetime = Hcreatetime;
        this.Hisrenting = Hisrenting;
        this.Hdescription = Hdescription;
    }

   
    
    
    public Integer getHnumber() {
        return  Hnumber;
    }

    public void setHnumber(Integer Hnumber) {
        this.Hnumber = Hnumber;
    }

    public String getHpicture() {
        return Hpicture;
    }

    public void setHpicture(String Hpicture) {
        this.Hpicture = Hpicture;
    }

    
    
    public String getHcity() {
        return Hcity;
    }

    public void setHcity(String Hcity) {
        this.Hcity = Hcity;
    }

    public String getHarea() {
        return Harea;
    }

    public void setHarea(String Harea) {
        this.Harea = Harea;
    }

    public String getLno() {
        return Lno;
    }

    public void setLno(String Lno) {
        this.Lno = Lno;
    }

    public String getUno() {
        return Uno;
    }

    public void setUno(String Uno) {
        this.Uno = Uno;
    }

    public String getGno() {
        return Gno;
    }

    public void setGno(String Gno) {
        this.Gno = Gno;
    }

    public Float getHrentprice() {
        return Hrentprice;
    }

    public void setHrentprice(Float Hrentprice) {
        this.Hrentprice = Hrentprice;
    }

    public String getHowner() {
        return Howner;
    }

    public void setHowner(String Howner) {
        this.Howner = Howner;
    }

    public String getHouseimg() {
        return Houseimg;
    }

    public void setHouseimg(String Houseimg) {
        this.Houseimg = Houseimg;
    }

    public String getHcreatetime() {
        return Hcreatetime;
    }

    public void setHcreatetime(String Hcreatetime) {
        this.Hcreatetime = Hcreatetime;
    }

    public String getHisrenting() {
        return Hisrenting;
    }

    public void setHisrenting(String Hisrenting) {
        this.Hisrenting = Hisrenting;
    }

    public String getHdescription() {
        return Hdescription;
    }

    public void setHdescription(String Hdescription) {
        this.Hdescription = Hdescription;
    }

    public String getHcname() {
        return Hcname;
    }

    public void setHcname(String Hcname) {
        this.Hcname = Hcname;
    }

    public String getHphone() {
        return Hphone;
    }

    public void setHphone(String Hphone) {
        this.Hphone = Hphone;
    }

}
