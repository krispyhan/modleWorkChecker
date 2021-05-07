package com.hsy.mybatis.controller;

import com.hsy.mybatis.bean.UserInfoBean;
import com.hsy.mybatis.entity.ReservationEntity;
import com.hsy.mybatis.entity.UserEntity;
import com.hsy.mybatis.entity.UserInfoEntity;
import com.hsy.mybatis.service.IUserManageService;
import com.hsy.mybatis.util.DateUtil;
import com.hsy.mybatis.util.WebJsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Optional;

@RestController
@RequestMapping("/centreManage")
public class CentreManageController {

    @Autowired
    public IUserManageService userManageService;

    @RequestMapping("/editInformation_{location}_{sex}_{birthday}_{introduction}_{currentAccount}")
    public String editInformation(@PathVariable String location,@PathVariable String sex,@PathVariable String birthday,@PathVariable String introduction,@PathVariable String currentAccount) throws ParseException {

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date birth = simpleDateFormat.parse(birthday);
        userManageService.editUserInformation(location,sex,birth,introduction,currentAccount);

        return "success";

    }

    @RequestMapping("/getCurrentUserName")
    public String getCurrentUserName(HttpSession session){
        UserEntity userEntity = (UserEntity) session.getAttribute("user");
        if(userEntity != null){
            return userEntity.getNickname();
        }
        return "";
    }

    @RequestMapping("/getCurrentUserType")
    public int getCurrentUserType(HttpSession session){
        UserEntity userEntity = (UserEntity) session.getAttribute("user");
        if(userEntity != null){
            return userEntity.getType();
        }
        return -1;
    }

    @RequestMapping("/getCurrentUserBirthday")
    public String getCurrentUserBirthday(HttpSession session){
        UserInfoEntity userInfoEntity = (UserInfoEntity) session.getAttribute("userinfo");
        if(userInfoEntity != null){
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String birthday = simpleDateFormat.format(userInfoEntity.getBirthday());
            return birthday;
        }
        return "";
    }

    @RequestMapping("/getCurrentUserContact")
    public String getCurrentUserContact(HttpSession session){
        UserEntity userEntity = (UserEntity) session.getAttribute("user");
        if(userEntity != null){
            return userEntity.getAccount();
        }
        return "";
    }

    @RequestMapping("/getCurrentUserSex")
    public String getCurrentUserSex(HttpSession session){
        UserInfoEntity userInfoEntity = (UserInfoEntity) session.getAttribute("userinfo");

        if(userInfoEntity != null){
            return userInfoEntity.getSex();
        }
        return "";
    }

    @RequestMapping("/getCurrentUserIntro")
    public String getCurrentUserIntro(HttpSession session){
        UserInfoEntity userInfoEntity = (UserInfoEntity) session.getAttribute("userinfo");
        if(userInfoEntity != null){
            return userInfoEntity.getIntro();
        }
        return "";
    }

    @RequestMapping("/getCurrentUserLocation")
    public String getCurrentUserLocation(HttpSession session){
        UserInfoEntity userInfoEntity = (UserInfoEntity) session.getAttribute("userinfo");
        if(userInfoEntity != null){
            return userInfoEntity.getLocation();
        }
        return "";
    }

    @RequestMapping("/getUserInfo")
    public WebJsonResult getUserInfo(HttpSession session){
        UserEntity userEntity = (UserEntity) session.getAttribute("user");
        if (userEntity == null){
            return WebJsonResult.newFailure("您还未登录");
        }else {
            UserInfoEntity info = userManageService.getUserInfoByAccount(userEntity.getAccount());
            UserInfoBean bean = new UserInfoBean();
            bean.setNickname(userEntity.getNickname());
            bean.setAccount(userEntity.getAccount());
            if(userEntity.getType() == 0){
                bean.setType("模特");
            }else if(userEntity.getType() == 1){
                bean.setType("委托人");
            }
            bean.setLocation(info.getLocation());
            bean.setSex(info.getSex());
            bean.setIntroduction(info.getIntro());
            Optional.ofNullable(info.getBirthday()).ifPresent(i -> {
                Date birthday = DateUtil.offset(DateUtil.FIELD_DATE,i,1);
                bean.setBirthdayStr(DateUtil.format(DateUtil.FORMAT_DATE,birthday));
                bean.setBirthday(birthday);
            });
            return WebJsonResult.newSuccess(bean);
        }
    }
}