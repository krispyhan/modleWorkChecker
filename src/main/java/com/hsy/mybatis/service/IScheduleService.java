package com.hsy.mybatis.service;

import com.hsy.mybatis.bean.MyFavoriteItem;
import com.hsy.mybatis.bean.MyScheduleItem;

import java.util.List;

public interface IScheduleService {

    List<MyScheduleItem> getMyScheduleByInitiative(String nickname);

    List<MyScheduleItem> getMyScheduleByPassive(String nickname);
}
