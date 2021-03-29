package com.hsy.mybatis.service;


import java.util.Date;

public interface IReserveService {

    void insertReservation(String theme, String contact, Date time, String content);

}
