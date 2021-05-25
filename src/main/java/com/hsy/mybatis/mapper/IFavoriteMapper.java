package com.hsy.mybatis.mapper;

import com.hsy.mybatis.bean.MyFavoriteItem;
import com.hsy.mybatis.entity.FavoriteEntity;
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

    @Select("select count(*) from favorite where favorite = #{nickname}")
    int getCurrentUserFavorCount(String nickname);

    @Select("select count(*) from favorite where operator = #{nickname}")
    int getCurrentUserFavoringCount(String nickname);
}
