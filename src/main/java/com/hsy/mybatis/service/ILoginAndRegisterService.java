package com.hsy.mybatis.service;


import com.hsy.mybatis.entity.UserEntity;

public interface ILoginAndRegisterService {

    void insertUser(String nickname,int type,String password,String sex,String phone);

    boolean checkUser(String account,String password,int type);
}
