package com.hsy.mybatis.controller;

import com.hsy.mybatis.service.IExamineService;
import com.hsy.mybatis.util.WebJsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

@RestController
@RequestMapping("/examine")
public class ExamineController {

    @Autowired
    private IExamineService examineService;

    @RequestMapping("/confirmExamine_{id}_{result}")
    public WebJsonResult confirmExamine(@PathVariable int id, @PathVariable int result){
        examineService.confirmExamine(id, result);
        return WebJsonResult.newSuccess("操作成功!");
    }

    @RequestMapping("/checkExamine_{initiative}_{passive}")
    public String checkExamine(@PathVariable String initiative,@PathVariable String passive){
        if(examineService.checkExamine(initiative, passive)){
            return "success";
        }
        return "failure";
    }

}
