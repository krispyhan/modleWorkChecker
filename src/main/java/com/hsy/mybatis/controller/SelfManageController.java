package com.hsy.mybatis.controller;

import com.hsy.mybatis.entity.UserInfoEntity;
import com.hsy.mybatis.service.IUserManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.Date;

@RestController
@RequestMapping("/selfManage")
public class SelfManageController {

    @Autowired
    private IUserManageService userManageService;

    @RequestMapping("/getUserPhone_{nickname}")
    public String getUserPhone(@PathVariable String nickname){
        return userManageService.getUserInfoByNickname(nickname).getAccount();
    }

    @RequestMapping("/getUserBirthday_{nickname}")
    public String getUserBirthday(@PathVariable String nickname){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date birthday = userManageService.getUserInfoByNickname(nickname).getBirthday();
        String birthdayStr = sdf.format(birthday);
        return birthdayStr;
    }

    @RequestMapping("/getUserLocation_{nickname}")
    public String getUserLocation(@PathVariable String nickname){
        return userManageService.getUserInfoByNickname(nickname).getLocation();
    }

    @RequestMapping("/getUserIntroduction_{nickname}")
    public String getUserIntroduction(@PathVariable String nickname){
        return userManageService.getUserInfoByNickname(nickname).getIntro();
    }

}
