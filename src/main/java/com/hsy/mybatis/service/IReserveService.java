package com.hsy.mybatis.service;


import com.hsy.mybatis.bean.MyReserveItem;

import java.util.Date;
import java.util.List;

public interface IReserveService {

    void insertReservation(String theme, String contact,String initiative,String passive, Date time, String content);

    List<MyReserveItem> getMyReserveByNickName(String nickname);

    List<MyReserveItem> getMyReserveByInitiative(String initiative);

    void confirmReserve(int id,int result);

    int getCurrentUserNewReserveCount(String nickname);

    int getCurrentUserAllReserveCount(String nickname);

    int getCurrentUserAcceptedReserveCount(String nickname);

    int getCurrentUserRefusedReserveCount(String nickname);

}
