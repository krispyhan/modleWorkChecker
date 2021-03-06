package com.hsy.mybatis.serviceImpl;


import com.hsy.mybatis.entity.ReservationEntity;
import com.hsy.mybatis.bean.MyReserveItem;
import com.hsy.mybatis.bean.ReserveBean;
import com.hsy.mybatis.mapper.IReserveServiceMapper;
import com.hsy.mybatis.service.IReserveService;
import com.hsy.mybatis.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Service
public class ReserveServiceImpl implements IReserveService {

    @Autowired(required = false)
    private IReserveServiceMapper reserveServiceMapper;

    @Override
    public void insertReservation(String theme, String contact, String initiative,String passive, Date time, String content) {
        ReserveBean reserveBean = new ReserveBean();
        reserveBean.setTheme(theme);
        reserveBean.setContact(contact);
        reserveBean.setInitiative(initiative);
        reserveBean.setPassive(passive);
        reserveBean.setTime(time);
        reserveBean.setContent(content);

        reserveServiceMapper.insertReservation(reserveBean);

    }

    @Override
    public List<MyReserveItem> getMyReserveByNickName(String nickname) {
        List<MyReserveItem> results = new ArrayList<>();
        List<ReservationEntity> list = reserveServiceMapper.getAllReservation(nickname);
        for(ReservationEntity entity : list){
            MyReserveItem item = new MyReserveItem();
            item.setInitialNickname(entity.getInitiative());
            item.setContact(entity.getContact());
            item.setTheme(entity.getTheme());
            item.setTime(DateUtil.format(DateUtil.FORMAT_DATE,entity.getTime()));
            if(entity.getStatus() == 0){
                item.setStatus("待处理");
            }else if(entity.getStatus() == 1){
                item.setStatus("已接受");
            }else if(entity.getStatus() == 2){
                item.setStatus("已拒绝");
            }
            item.setId(entity.getId());
            item.setContent(entity.getContent());
            results.add(item);
        }
        return results;
    }

    @Override
    public List<MyReserveItem> getMyReserveByInitiative(String initiative) {
        List<MyReserveItem> results = new ArrayList<>();
        List<ReservationEntity> list = reserveServiceMapper.getAllReservationForInitiative(initiative);
        for(ReservationEntity entity : list){
            MyReserveItem item = new MyReserveItem();
            item.setPassiveNickname(entity.getPassive());
            item.setTheme(entity.getTheme());
            item.setTime(DateUtil.format(DateUtil.FORMAT_DATE,entity.getTime()));
            if(entity.getStatus() == 0){
                item.setStatus("对方未处理");
            }else if(entity.getStatus() == 1){
                item.setStatus("对方已接受");
            }else if(entity.getStatus() == 2){
                item.setStatus("对方已拒绝");
            }
            item.setId(entity.getId());
            item.setContent(entity.getContent());
            results.add(item);
        }
        return results;
    }

    @Override
    public void confirmReserve(int id, int result) {
        reserveServiceMapper.confirmReserve(id,result);
    }

    @Override
    public int getCurrentUserNewReserveCount(String nickname) {
        return reserveServiceMapper.getCurrentUserNewReserveCount(nickname);
    }

    @Override
    public int getCurrentUserAllReserveCount(String nickname){
        return reserveServiceMapper.getCurrentUserAllReserveCount(nickname);
    }

    @Override
    public int getCurrentUserAcceptedReserveCount(String nickname){
        return reserveServiceMapper.getCurrentUserAcceptedReserveCount(nickname);
    }

    @Override
    public int getCurrentUserRefusedReserveCount(String nickname){
        return reserveServiceMapper.getCurrentUserRefusedReserveCount(nickname);
    }

    @Override
    public int getAllReserveCount() {
        return reserveServiceMapper.getAllReserveCount();
    }

}
