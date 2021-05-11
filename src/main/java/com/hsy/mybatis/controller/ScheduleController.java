package com.hsy.mybatis.controller;

import com.hsy.mybatis.bean.DataGridResult;
import com.hsy.mybatis.bean.MyFavoriteItem;
import com.hsy.mybatis.bean.MyScheduleItem;
import com.hsy.mybatis.service.IScheduleService;
import com.hsy.mybatis.util.WebJsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("schedule")
public class ScheduleController {

    @Autowired(required = false)
    IScheduleService scheduleService;

    @RequestMapping("/getMyScheduleByInitiative_{nickname}")
    public WebJsonResult getMyScheduleByInitiative(@PathVariable String nickname){
        List<MyScheduleItem> results = scheduleService.getMyScheduleByInitiative(nickname);
        DataGridResult dataGridResult = new DataGridResult();
        dataGridResult.setRows(results);
        dataGridResult.setTotal(results.size());
        return WebJsonResult.newSuccess(dataGridResult);

    }

    @RequestMapping("/getMyScheduleByPassive_{nickname}")
    public WebJsonResult getMyScheduleByPassive(@PathVariable String nickname){
        List<MyScheduleItem> results = scheduleService.getMyScheduleByPassive(nickname);
        DataGridResult dataGridResult = new DataGridResult();
        dataGridResult.setRows(results);
        dataGridResult.setTotal(results.size());
        return WebJsonResult.newSuccess(dataGridResult);

    }

    @RequestMapping("/displayScheduleDetail_{id}")
    public String displayScheduleDetail(@PathVariable int id){
        String detail = scheduleService.getScheduleDetail(id).getContent();
        return detail;
    }

}
