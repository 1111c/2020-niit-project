package com.houserent.pojo;

import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Users")
public class User implements Serializable {

    @Id
    @GeneratedValue(generator = "pkAssigned")
    @GenericGenerator(name="pkAssigned",strategy = "assigned")
    String UName;

    String Ustatus;
    String UPicture;
    String UPhone;
    String UEmail;
    String UBirthday;
    String UGender;
    String UPassword;

    public User() {
    }

    public User(String UName, String UPicture, String UPhone, String UEmail, String UBirthday, String UGender, String UPassword) {
        this.UName = UName;
        this.UPicture = UPicture;
        this.UPhone = UPhone;
        this.UEmail = UEmail;
        this.UBirthday = UBirthday;
        this.UGender = UGender;
        this.UPassword = UPassword;
    }

    public String getUName() {
        return UName;
    }

    public void setUName(String UName) {
        this.UName = UName;
    }

    public String getUstatus() {
        return Ustatus;
    }

    public void setUstatus(String Ustatus) {
        this.Ustatus = Ustatus;
    }

    
    
    
    public String getUPicture() {
        return UPicture;
    }

    public void setUPicture(String UPicture) {
        this.UPicture = UPicture;
    }

    public String getUPhone() {
        return UPhone;
    }

    public void setUPhone(String UPhone) {
        this.UPhone = UPhone;
    }

    public String getUEmail() {
        return UEmail;
    }

    public void setUEmail(String UEmail) {
        this.UEmail = UEmail;
    }

    public String getUBirthday() {
        return UBirthday;
    }

    public void setUBirthday(String UBirthday) {
        this.UBirthday = UBirthday;
    }

    public String getUGender() {
        return UGender;
    }

    public void setUGender(String UGender) {
        this.UGender = UGender;
    }

    public String getUPassword() {
        return UPassword;
    }

    public void setUPassword(String UPassword) {
        this.UPassword = UPassword;
    }

}
