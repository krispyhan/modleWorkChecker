package com.hsy.mybatis.serviceImpl;

import com.hsy.mybatis.bean.MyFavoriteItem;
import com.hsy.mybatis.entity.FavoriteEntity;
import com.hsy.mybatis.mapper.IFavoriteMapper;
import com.hsy.mybatis.mapper.IUserMapper;
import com.hsy.mybatis.service.IFavoriteService;
import com.hsy.mybatis.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class FavoriteServiceImpl implements IFavoriteService {

    @Autowired(required = false)
    private IFavoriteMapper favoriteMapper;

    @Autowired(required = false)
    private IUserMapper userMapper;

    @Override
    public void insertFavorite(String favorite, String operator) {
        SimpleDateFormat sdf = new SimpleDateFormat();
        sdf.applyPattern("yyyy-MM-dd HH:mm:ss");
        MyFavoriteItem myFavoriteItem = new MyFavoriteItem();
        myFavoriteItem.setFavorite(favorite);
        myFavoriteItem.setOperator(operator);
        myFavoriteItem.setOperateDate(sdf.format(new Date()));
        favoriteMapper.insertFavorite(myFavoriteItem);
    }

    @Override
    public List<MyFavoriteItem> getMyFavoriteByNickName(String operatorNickname) {
        List<MyFavoriteItem> results = new ArrayList<>();
        List<FavoriteEntity> list = favoriteMapper.getAllFavorites(operatorNickname);

        for(FavoriteEntity entity:list){
            SimpleDateFormat sdf = new SimpleDateFormat();
            sdf.applyPattern("yyyy-MM-dd HH:mm:ss");
            MyFavoriteItem myFavoriteItem = new MyFavoriteItem();
            myFavoriteItem.setOperator(entity.getOperator());
            myFavoriteItem.setFavorite(entity.getFavorite());
            myFavoriteItem.setOperateDate(DateUtil.format(DateUtil.FORMAT_SECOND,entity.getOperateDate()));
            results.add(myFavoriteItem);
        }

        return results;
    }
}
