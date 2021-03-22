package com.hsy.mybatis.mapper;

import com.hsy.mybatis.bean.ReserveBean;
import com.hsy.mybatis.entity.ReservationEntity;
import org.apache.ibatis.annotations.Insert;

import java.util.Date;

public interface IReserveServiceMapper {

    @Insert("insert into reservation(theme,contact,time,content) values (#{theme},#{contact},#{time},#{content})")
     void insertReservation(ReserveBean reserveBean);

}
