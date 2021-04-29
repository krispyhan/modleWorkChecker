package com.hsy.mybatis.controller;


import com.hsy.mybatis.bean.DataGridResult;
import com.hsy.mybatis.bean.MyReserveItem;
import com.hsy.mybatis.service.IReserveService;
import com.hsy.mybatis.util.WebJsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@RestController
@RequestMapping("/reserve")
public class ReserveController {

    @Autowired
    private IReserveService reserveService;

    @RequestMapping("/addReserve_{theme}_{contact}_{initiative}_{passive}_{time}_{content}")
    public String sendReservation(@PathVariable String theme, @PathVariable String contact,@PathVariable String initiative,
                                  @PathVariable String passive, @PathVariable String time, @PathVariable String content) throws ParseException {

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        Date reserveDate = sdf.parse(time);

        reserveService.insertReservation(theme,contact,initiative,passive,reserveDate,content);

        return "success";

    }

    @RequestMapping("/getMyReserves_{nickname}")
    public WebJsonResult getMyReserves(@PathVariable String nickname){
        List<MyReserveItem> results = reserveService.getMyReserveByNickName(nickname);
        DataGridResult dataGridResult = new DataGridResult();
        dataGridResult.setRows(results);
        dataGridResult.setTotal(results.size());
        return WebJsonResult.newSuccess(dataGridResult);
    }

    @RequestMapping("/confirmReserve_{id}_{result}")
    public WebJsonResult confirmReserve(@PathVariable int id,@PathVariable int result){
        reserveService.confirmReserve(id,result);
        return WebJsonResult.newSuccess("操作成功!");
    }

}
