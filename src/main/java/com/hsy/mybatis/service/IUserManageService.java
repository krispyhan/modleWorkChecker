package com.hsy.mybatis.service;

import com.hsy.mybatis.bean.UserBean;
import com.hsy.mybatis.entity.UserEntity;
import com.hsy.mybatis.entity.UserInfoEntity;
import org.apache.ibatis.annotations.Select;

import java.util.Date;
import java.util.List;

public interface IUserManageService {

    UserEntity getUserByAccount(String account);

    UserInfoEntity getUserInfoByAccount(String account);

    UserInfoEntity getUserInfoByNickname(String nickname);

    void editUserInformation(String location, String sex, Date birthday, String introduction,String account,String coverRef);

    int getUserCount();

    int getModelCount();

    int getConsignorCount();

    List<UserBean> getModels();

    List<UserBean> getConsignors();
}
