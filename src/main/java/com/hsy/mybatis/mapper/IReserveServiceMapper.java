package com.hsy.mybatis.mapper;

import com.hsy.mybatis.bean.ReserveBean;
import com.hsy.mybatis.entity.ReservationEntity;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface IReserveServiceMapper {

    @Insert("insert into reservation(theme,contact,initiative,passive,time,content) values (#{theme},#{contact},#{initiative},#{passive},#{time},#{content})")
     void insertReservation(ReserveBean reserveBean);

    @Select("select * from reservation where passive = #{passive}")
    List<ReservationEntity> getAllReservation(String passive);

    @Select("select * from reservation where initiative = #{initiative}")
    List<ReservationEntity> getAllReservationForInitiative(String initiative);

    @Update("update reservation r set r.status = #{status} where id = #{id}")
    void confirmReserve(int id,int status);

    @Select("select count(*) from reservation where passive = #{nickname} and status = 0 ")
    int getCurrentUserNewReserveCount(String nickname);

    @Select("select count(*) from reservation where passive = #{nickname} or initiative = #{nickname}")
    int getCurrentUserAllReserveCount(String nickname);

    @Select("select count(*) from reservation where status = 1 and (passive = #{nickname} or initiative = #{nickname})")
    int getCurrentUserAcceptedReserveCount(String nickname);

    @Select("select count(*) from reservation where status = 2 and (passive = #{nickname} or initiative = #{nickname})")
    int getCurrentUserRefusedReserveCount(String nickname);

    @Select("select count(*) from reservation")
    int getAllReserveCount();

}
