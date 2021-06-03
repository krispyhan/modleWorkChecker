package com.hsy.mybatis.serviceImpl;

import com.hsy.mybatis.bean.MyReserveItem;
import com.hsy.mybatis.bean.UserBean;
import com.hsy.mybatis.entity.ReservationEntity;
import com.hsy.mybatis.entity.UserInfoEntity;
import com.hsy.mybatis.mapper.IUserMapper;
import com.hsy.mybatis.bean.UserInfoBean;
import com.hsy.mybatis.entity.UserEntity;
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
    public UserInfoEntity getUserInfoByNickname(String nickname) {
        return userMapper.getUserInfoByNickname(nickname);
    }

    @Override
    public void editUserInformation(String location, String sex, Date birthday, String introduction, String account,String coverRef){
        UserInfoBean userInfoBean = new UserInfoBean();
        userInfoBean.setAccount(account);
        userInfoBean.setLocation(location);
        userInfoBean.setSex(sex);
        userInfoBean.setBirthday(birthday);
        userInfoBean.setIntroduction(introduction);
        userInfoBean.setCoverRef(coverRef);
        userMapper.editUserInformation(userInfoBean);

    }

    @Override
    public int getUserCount() {
        return userMapper.getUserCount();
    }

    @Override
    public int getModelCount() {
        return userMapper.getModelCount();
    }

    @Override
    public int getConsignorCount() {
        return userMapper.getConsignorCount();
    }

    @Override
    public List<UserBean> getModels() {
        List<UserBean> results = new ArrayList<>();
        List<UserEntity> list = userMapper.getModels();
        for(UserEntity entity : list){
            UserBean bean = new UserBean();
            bean.setId(entity.getId());
            bean.setAccount(entity.getAccount());
            bean.setNickname(entity.getNickname());
            bean.setType(entity.getType());
            if(entity.getCertificate() == 0){
                bean.setCertificate("资质审核中");
            }else if(entity.getCertificate() == 1){
                bean.setCertificate("资质审核通过");
            }else if(entity.getCertificate()== 2){
                bean.setCertificate("资质审核退回");
            }
            results.add(bean);
        }
        return results;
    }

    @Override
    public List<UserBean> getConsignors() {
        List<UserBean> results = new ArrayList<>();
        List<UserEntity> list = userMapper.getConsignors();
        for(UserEntity entity : list){
            UserBean bean = new UserBean();
            bean.setId(entity.getId());
            bean.setAccount(entity.getAccount());
            bean.setNickname(entity.getNickname());
            bean.setType(entity.getType());
            if(entity.getCertificate() == 0){
                bean.setCertificate("资质审核中");
            }else if(entity.getCertificate() == 1){
                bean.setCertificate("资质审核通过");
            }else if(entity.getCertificate()== 2){
                bean.setCertificate("资质审核退回");
            }
            results.add(bean);
        }
        return results;
    }

}
