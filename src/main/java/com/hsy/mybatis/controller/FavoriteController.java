package com.hsy.mybatis.controller;

import com.hsy.mybatis.bean.DataGridResult;
import com.hsy.mybatis.bean.MyFavoriteItem;
import com.hsy.mybatis.service.IFavoriteService;
import com.hsy.mybatis.util.WebJsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/favorite")
public class FavoriteController {

    @Autowired(required = false)
    IFavoriteService favoriteService;

    @RequestMapping("/addFavorite_{favorite}_{operator}")
    public String addFavorite(@PathVariable String favorite,@PathVariable String operator){
        favoriteService.insertFavorite(favorite,operator);
        return "success";
    }

    @RequestMapping("/cancelFavorite_{id}")
    public WebJsonResult cancelFavorite(@PathVariable int id){
        favoriteService.cancelFavorite(id);
        return WebJsonResult.newSuccess("收藏取消成功!");
    }

    @RequestMapping("/getMyFavorites_{operatorNickname}")
    public WebJsonResult getMyFavorites(@PathVariable String operatorNickname){
        List<MyFavoriteItem> results = favoriteService.getMyFavoriteByNickName(operatorNickname);
        DataGridResult dataGridResult = new DataGridResult();
        dataGridResult.setRows(results);
        dataGridResult.setTotal(results.size());
        return WebJsonResult.newSuccess(dataGridResult);
    }

}
