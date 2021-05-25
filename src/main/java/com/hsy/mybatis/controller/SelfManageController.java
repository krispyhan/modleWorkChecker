package com.hsy.mybatis.controller;

import com.hsy.mybatis.bean.DataGridResult;
import com.hsy.mybatis.bean.UserBean;
import com.hsy.mybatis.bean.UserInfoBean;
import com.hsy.mybatis.entity.UserEntity;
import com.hsy.mybatis.entity.UserInfoEntity;
import com.hsy.mybatis.service.IUserManageService;
import com.hsy.mybatis.util.WebJsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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

    @RequestMapping("/getUserCertificate_{nickname}")
    public int getUserCertificate(@PathVariable String nickname){
        int result = userManageService.getUserInfoByNickname(nickname).getCertificate();
        return result;
    }

    @RequestMapping("/getUserCount")
    public int getUserCount(){
            return userManageService.getUserCount();
    }

    @RequestMapping("/getModelCount")
    public int getModelCount(){
        return userManageService.getModelCount();
    }

    @RequestMapping("/getConsignorCount")
    public int getConsignorCount(){
        return userManageService.getConsignorCount();
    }

    @RequestMapping("/getModels")
    public WebJsonResult getModels(){
        List<UserBean> results = userManageService.getModels();
        DataGridResult dataGridResult = new DataGridResult();
        dataGridResult.setRows(results);
        dataGridResult.setTotal(results.size());
        return WebJsonResult.newSuccess(dataGridResult);
    }

    @RequestMapping("/getConsignors")
    public WebJsonResult getConsignors(){
        List<UserBean> results = userManageService.getConsignors();
        DataGridResult dataGridResult = new DataGridResult();
        dataGridResult.setRows(results);
        dataGridResult.setTotal(results.size());
        return WebJsonResult.newSuccess(dataGridResult);
    }
}
