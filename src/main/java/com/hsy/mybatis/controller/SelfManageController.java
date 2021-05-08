package com.hsy.mybatis.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/selfManage")
public class SelfManageController {

    public String getSelfUserType(@PathVariable String selfNickname){
        return "success";
    }

}
