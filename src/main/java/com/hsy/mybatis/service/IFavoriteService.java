package com.hsy.mybatis.service;

import com.hsy.mybatis.bean.MyFavoriteItem;

import java.util.List;

public interface IFavoriteService {

    void insertFavorite(String favorite,String operator);
    
    void cancelFavorite(int id);

    List<MyFavoriteItem> getMyFavoriteByNickName(String operatorNickname);

    int  getCurrentUserFavorCount(String nickname);

    int  getCurrentUserFavoringCount(String nickname);
}
