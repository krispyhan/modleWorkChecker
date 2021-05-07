package com.hsy.mybatis.mapper;

import com.hsy.mybatis.bean.MyFavoriteItem;
import com.hsy.mybatis.entity.FavoriteEntity;
import com.hsy.mybatis.entity.UserInfoEntity;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface IFavoriteMapper {

    @Insert("insert into favorite(favorite,operator,operateDate) values (#{favorite},#{operator},#{operateDate})")
    void insertFavorite(MyFavoriteItem myFavoriteItem);

    @Delete("delete from favorite where id = #{id}")
    void cancelFavorite(int id);

    @Select("select * from favorite where operator = #{operatorNickname}")
    List<FavoriteEntity> getAllFavorites(String operatorNickname);
}