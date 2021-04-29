package com.hsy.mybatis.mapper;

import com.hsy.mybatis.bean.ReserveBean;
import com.hsy.mybatis.entity.ReservationEntity;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.Date;
import java.util.List;

public interface IReserveServiceMapper {

    @Insert("insert into reservation(theme,contact,initiative,passive,time,content) values (#{theme},#{contact},#{initiative},#{passive},#{time},#{content})")
     void insertReservation(ReserveBean reserveBean);

    @Select("select * from reservation where passive = #{passive}")
    List<ReservationEntity> getAllReservation(String passive);

    @Update("update reservation r set r.status = #{status} where id = #{id}")
    void confirmReserve(int id,int status);

}
