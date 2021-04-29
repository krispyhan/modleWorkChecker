package com.hsy.mybatis.service;

import com.hsy.mybatis.entity.UserEntity;

public interface IUserManageService {

    UserEntity getUserByAccount(String account);
}
