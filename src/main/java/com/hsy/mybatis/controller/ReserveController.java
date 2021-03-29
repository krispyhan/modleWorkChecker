package com.hsy.mybatis.controller;


import com.hsy.mybatis.service.IReserveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


@RestController
public class ReserveController {

    @Autowired
    private IReserveService reserveService;

    @RequestMapping("/reserve_{theme}_{contact}_{time}_{content}")
    public String sendReservation(@PathVariable String theme, @PathVariable String contact,
                                  @PathVariable String time, @PathVariable String content) throws ParseException {

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        Date reserveDate = sdf.parse(time);

        reserveService.insertReservation(theme,contact,reserveDate,content);

        return "success";

    }

}
