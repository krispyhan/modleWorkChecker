package com.hsy.mybatis.service;


import java.sql.Date;

public interface IReserveService {

    void insertReservation(String theme,String contact,Date time,String content);

}
