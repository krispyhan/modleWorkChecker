package com.hsy.mybatis.mapper;

import com.hsy.mybatis.bean.MyScheduleItem;
import com.hsy.mybatis.entity.FavoriteEntity;
import com.hsy.mybatis.entity.ScheduleEntity;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface IScheduleMapper {

    @Select("select * from reservation where initiative = #{nickname} and status = 1")
    List<ScheduleEntity> getMyScheduleByInitiative(String nickname);

    @Select("select * from reservation where passive = #{nickname} and status = 1")
    List<ScheduleEntity> getMyScheduleByPassive(String nickname);
}
