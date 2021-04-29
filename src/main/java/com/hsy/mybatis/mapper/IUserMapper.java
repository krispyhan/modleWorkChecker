package com.hsy.mybatis.mapper;

import com.hsy.mybatis.bean.LoginBean;
import com.hsy.mybatis.entity.UserEntity;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface IUserMapper {

    @Select("select * from user where account = #{account}")
    UserEntity getUser(String account);
}
