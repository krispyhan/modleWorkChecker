package com.hsy.mybatis.serviceImpl;

import com.hsy.mybatis.entity.UserEntity;
import com.hsy.mybatis.mapper.IUserMapper;
import com.hsy.mybatis.service.IUserManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserManageServiceImpl implements IUserManageService {

    @Autowired(required = false)
    private IUserMapper userMapper;

    @Override
    public UserEntity getUserByAccount(String account) {
        return userMapper.getUser(account);
    }
}
