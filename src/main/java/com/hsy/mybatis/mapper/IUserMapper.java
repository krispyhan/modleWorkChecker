package com.hsy.mybatis.mapper;

import com.hsy.mybatis.bean.UserInfoBean;
import com.hsy.mybatis.entity.ReservationEntity;
import com.hsy.mybatis.entity.UserEntity;
import com.hsy.mybatis.entity.UserInfoEntity;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;


public interface IUserMapper {

    @Select("select * from user where account = #{account}")
    UserEntity getUser(String account);

    @Select("select * from information where account = #{account}")
    UserInfoEntity getUserInfo(String account);

    @Select("select * from information where nickname = #{nickname}")
    UserInfoEntity getUserInfoByNickname(String nickname);

    @Update("update information info set info.location = #{location},info.sex = #{sex},info.birthday = #{birthday},info.intro = #{introduction},info.coverRef = #{coverRef} where account = #{account}")
    void editUserInformation(UserInfoBean userInfobean);

    @Select("select count(*) from user ")
    int getUserCount();

    @Select("select count(*) from user where type = 0 ")
    int getModelCount();

    @Select("select count(*) from user where type = 1 ")
    int getConsignorCount();

    @Select("select * from user where type = 0")
    List<UserEntity> getModels();

    @Select("select * from user where type = 1")
    List<UserEntity> getConsignors();

}
