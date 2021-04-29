package com.hsy.mybatis.controller;

import com.hsy.mybatis.entity.UserEntity;
import com.hsy.mybatis.mapper.ILoginAndRegisterMapper;
import com.hsy.mybatis.service.ILoginAndRegisterService;
import com.hsy.mybatis.service.IUserManageService;
import com.hsy.mybatis.util.WebJsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

@RestController
public class LoginAndRegisterController {

    @Autowired
    private ILoginAndRegisterService loginAndRegisterService;

    @Autowired(required = false)
    private ILoginAndRegisterMapper loginAndRegisterMapper;

    @Autowired
    private IUserManageService userManageService;

    @RequestMapping("/register_{nickname}_{type}_{password}_{sex}_{phone}")
    public String registerUser(@PathVariable String nickname,@PathVariable int type,
                                @PathVariable String password,@PathVariable String sex,
                                @PathVariable String phone){
        UserEntity userEntity = loginAndRegisterMapper.isExisted(phone);
        if(userEntity != null){
            return "isExisted";
        }
        loginAndRegisterService.insertUser(nickname,type,password,sex,phone);
        return "success";
    }

    @RequestMapping("/checkUser_{account}_{password}_{type}")
    public String checkUser(@PathVariable String account,
                            @PathVariable String password,
                            @PathVariable int type,
                            HttpSession session){
        if(loginAndRegisterService.checkUser(account,password,type)){
            session.setAttribute("user",userManageService.getUserByAccount(account));
            return "success";
        }
        return "failure";
    }

    @RequestMapping("/logout")
    public WebJsonResult logout(HttpSession session){
        UserEntity userEntity = (UserEntity) session.getAttribute("user");
        if(userEntity == null){
            return WebJsonResult.newFailure("您还未登录，无需注销");
        }else {
            session.removeAttribute("user");
            return WebJsonResult.newSuccess("注销成功!");
        }
    }
}
