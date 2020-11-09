/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.houserent.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Reply")
public class Reply {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;        //回复号
    private String UName;      //用户ID
    private Integer Cid;   //被回复的评论id
    private String UImage;     //用户头像 
    private String content;    //内容

    public Reply() {
    }

    public Reply(Integer id, String UName, Integer Cid, String UImage, String content) {
        this.id = id;
        this.UName = UName;
        this.Cid = Cid;
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

    public Integer getCid() {
        return Cid;
    }

    public void setCid(Integer Cid) {
        this.Cid = Cid;
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
