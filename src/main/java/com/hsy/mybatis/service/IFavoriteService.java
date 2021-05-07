package com.hsy.mybatis.service;

import com.hsy.mybatis.bean.MyFavoriteItem;

import java.util.List;

public interface IFavoriteService {

    void insertFavorite(String favorite,String operator);

    List<MyFavoriteItem> getMyFavoriteByNickName(String operatorNickname);
}
