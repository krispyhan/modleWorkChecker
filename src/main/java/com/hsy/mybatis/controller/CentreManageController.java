package com.hsy.mybatis.controller;

import com.hsy.mybatis.entity.UserEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@RestController
@RequestMapping("/centreManage")
public class CentreManageController {

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
        UserEntity userEntity = (UserEntity) session.getAttribute("user");
        if(userEntity != null){
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String birthday = simpleDateFormat.format(userEntity.getBirthday());
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
        UserEntity userEntity = (UserEntity) session.getAttribute("user");
        if(userEntity != null){
            return userEntity.getSex();
        }
        return "";
    }

    @RequestMapping("/getCurrentUserIntro")
    public String getCurrentUserIntro(HttpSession session){
        UserEntity userEntity = (UserEntity) session.getAttribute("user");
        if(userEntity != null){
            return userEntity.getIntro();
        }
        return "";
    }

}
