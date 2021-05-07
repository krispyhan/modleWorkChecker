package com.hsy.mybatis.serviceImpl;

import com.hsy.mybatis.bean.MyReserveItem;
import com.hsy.mybatis.bean.UserInfoBean;
import com.hsy.mybatis.entity.ReservationEntity;
import com.hsy.mybatis.entity.UserEntity;
import com.hsy.mybatis.entity.UserInfoEntity;
import com.hsy.mybatis.mapper.IUserMapper;
import com.hsy.mybatis.service.IUserManageService;
import com.hsy.mybatis.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class UserManageServiceImpl implements IUserManageService {

    @Autowired(required = false)
    private IUserMapper userMapper;

    @Override
    public UserEntity getUserByAccount(String account) {
        return userMapper.getUser(account);
    }

    @Override
    public UserInfoEntity getUserInfoByAccount(String account){

        return  userMapper.getUserInfo(account);
    }

    @Override
    public void editUserInformation(String location, String sex, Date birthday, String introduction, String account){
        UserInfoBean userInfoBean = new UserInfoBean();
        userInfoBean.setAccount(account);
        userInfoBean.setLocation(location);
        userInfoBean.setSex(sex);
        userInfoBean.setBirthday(birthday);
        userInfoBean.setIntroduction(introduction);

        userMapper.editUserInformation(userInfoBean);

    }

}
