package com.hsy.mybatis.service;

import com.hsy.mybatis.bean.UserInfoBean;
import com.hsy.mybatis.entity.UserEntity;
import com.hsy.mybatis.entity.UserInfoEntity;

import java.util.Date;

public interface IUserManageService {

    UserEntity getUserByAccount(String account);

    UserInfoEntity getUserInfoByAccount(String account);

    void editUserInformation(String location, String sex, Date birthday, String introduction,String account);
}
