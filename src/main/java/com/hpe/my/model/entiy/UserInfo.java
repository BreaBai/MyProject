package com.hpe.my.model.entiy;

import java.io.Serializable;

/**
 * Created by BaiRu on 2016/12/27.
 */


public class UserInfo implements Serializable {



    private Integer userId;//用户Id
    private String userName;//用户名
    private String userPassword;//密码


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}
