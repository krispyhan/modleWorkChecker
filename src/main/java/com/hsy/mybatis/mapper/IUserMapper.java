package com.hsy.mybatis.mapper;

import com.hsy.mybatis.bean.LoginBean;
import com.hsy.mybatis.bean.UserInfoBean;
import com.hsy.mybatis.entity.ReservationEntity;
import com.hsy.mybatis.entity.UserEntity;
import com.hsy.mybatis.entity.UserInfoEntity;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.Date;
import java.util.List;

public interface IUserMapper {

    @Select("select * from user where account = #{account}")
    UserEntity getUser(String account);

    @Select("select * from information where account = #{account}")
    UserInfoEntity getUserInfo(String account);

    @Select("select * from information where account = #{favorite}")
    List<UserInfoEntity> getAllUserInfo(String favorite);

    @Update("update information info set info.location = #{location},info.sex = #{sex},info.birthday = #{birthday},info.intro = #{introduction} where account = #{account}")
    void editUserInformation(UserInfoBean userInfobean);

}
