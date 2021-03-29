package com.hsy.mybatis.serviceImpl;


import com.hsy.mybatis.bean.ReserveBean;
import com.hsy.mybatis.mapper.IReserveServiceMapper;
import com.hsy.mybatis.service.IReserveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;


@Service
public class ReserveServiceImpl implements IReserveService {

    @Autowired(required = false)
    private IReserveServiceMapper reserveServiceMapper;

    @Override
    public void insertReservation(String theme, String contact, Date time, String content) {
        ReserveBean reserveBean = new ReserveBean();
        reserveBean.setTheme(theme);
        reserveBean.setContact(contact);
        reserveBean.setTime(time);
        reserveBean.setContent(content);

        reserveServiceMapper.insertReservation(reserveBean);

    }
}
