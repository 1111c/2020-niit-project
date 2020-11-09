/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.houserent.pojo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Comment")
public class Comment implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;        //评论号
    private String  UName;      //用户ID
    private Integer Hnumber;   //被评价的房屋
    private String  UImage;     //用户头像 
    private String  content;    //内容

    public Comment() {
    }

    public Comment(Integer id, String UName, Integer Hnumber, String UImage, String content) {
        this.id = id;
        this.UName = UName;
        this.Hnumber = Hnumber;
        this.UImage = UImage;
        this.content = content;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUName() {
        return UName;
    }

    public void setUName(String UName) {
        this.UName = UName;
    }

    public Integer getHnumber() {
        return Hnumber;
    }

    public void setHnumber(Integer Hnumber) {
        this.Hnumber = Hnumber;
    }

    public String getUImage() {
        return UImage;
    }

    public void setUImage(String UImage) {
        this.UImage = UImage;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
    
    
    

}
