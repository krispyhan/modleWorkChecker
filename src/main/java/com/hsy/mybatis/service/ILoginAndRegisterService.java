package com.hsy.mybatis.service;


public interface ILoginAndRegisterService {

    void insertUser(String nickname,int type,String password,String phone);

    void insertUserInformation(String phone,String nickname);

    boolean checkUser(String account,String password,int type);
}
