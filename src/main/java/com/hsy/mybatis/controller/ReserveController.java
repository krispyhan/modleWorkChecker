package com.hsy.mybatis.controller;


import com.hsy.mybatis.service.IReserveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.Date;

@RestController
public class ReserveController {

    @Autowired
    private IReserveService reserveService;

    @RequestMapping("/reserve_{theme}_{contact}_{time}_{content}")
    public String sendReservation(@PathVariable String theme,@PathVariable String contact,
                                   @PathVariable Date time,@PathVariable String content){

        reserveService.insertReservation(theme,contact,time,content);

        return "success";

    }

}
