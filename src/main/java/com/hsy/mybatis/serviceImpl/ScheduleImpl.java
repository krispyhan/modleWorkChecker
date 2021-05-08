package com.hsy.mybatis.serviceImpl;

import com.hsy.mybatis.bean.MyScheduleItem;
import com.hsy.mybatis.entity.ScheduleEntity;
import com.hsy.mybatis.mapper.IScheduleMapper;
import com.hsy.mybatis.service.IScheduleService;
import com.hsy.mybatis.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Service
public class ScheduleImpl implements IScheduleService {

    @Autowired(required = false)
    private IScheduleMapper scheduleMapper;

    @Override
    public List<MyScheduleItem> getMyScheduleByInitiative(String nickname) {
        List<MyScheduleItem> results = new ArrayList<>();
        List<ScheduleEntity> list = scheduleMapper.getMyScheduleByInitiative(nickname);

        for(ScheduleEntity entity:list){
            SimpleDateFormat sdf = new SimpleDateFormat();
            sdf.applyPattern("yyyy-MM-dd HH:mm:ss");
            MyScheduleItem myScheduleItem = new MyScheduleItem();
            myScheduleItem.setPassive(entity.getPassive());
            myScheduleItem.setTheme(entity.getTheme());
            myScheduleItem.setTime(DateUtil.format(DateUtil.FORMAT_SECOND,entity.getTime()));
            results.add(myScheduleItem);
        }

        return results;
    }

    @Override
    public List<MyScheduleItem> getMyScheduleByPassive(String nickname) {
        List<MyScheduleItem> results = new ArrayList<>();
        List<ScheduleEntity> list = scheduleMapper.getMyScheduleByPassive(nickname);

        for(ScheduleEntity entity:list){
            SimpleDateFormat sdf = new SimpleDateFormat();
            sdf.applyPattern("yyyy-MM-dd HH:mm:ss");
            MyScheduleItem myScheduleItem = new MyScheduleItem();
            myScheduleItem.setInitiative(entity.getInitiative());
            myScheduleItem.setContact(entity.getContact());
            myScheduleItem.setTheme(entity.getTheme());
            myScheduleItem.setTime(DateUtil.format(DateUtil.FORMAT_SECOND,entity.getTime()));
            results.add(myScheduleItem);
        }

        return results;
    }
}
