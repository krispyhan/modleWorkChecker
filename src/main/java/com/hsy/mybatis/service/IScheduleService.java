package com.hsy.mybatis.service;

import com.hsy.mybatis.bean.MyScheduleItem;
import com.hsy.mybatis.entity.ScheduleEntity;

import java.util.List;

public interface IScheduleService {

    List<MyScheduleItem> getMyScheduleByInitiative(String nickname);

    List<MyScheduleItem> getMyScheduleByPassive(String nickname);

    ScheduleEntity getScheduleDetail(int id);
}
