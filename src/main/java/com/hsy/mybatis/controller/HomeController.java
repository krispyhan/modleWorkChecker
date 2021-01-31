package com.hsy.mybatis.controller;

import com.hsy.mybatis.entity.ModelEntity;
import com.hsy.mybatis.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class HomeController {

    @RequestMapping(path = "/")
    public String getHomePage(){
        return "index.jsp";
    }
}
