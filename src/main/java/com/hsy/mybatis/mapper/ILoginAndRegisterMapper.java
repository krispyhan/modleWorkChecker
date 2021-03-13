package com.hsy.mybatis.mapper;

import com.hsy.mybatis.bean.LoginBean;
import com.hsy.mybatis.bean.RegisterBean;
import com.hsy.mybatis.entity.UserEntity;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface ILoginAndRegisterMapper {
    @Insert("insert into user(account,password,nickname,type,sex) values (#{phone},#{password},#{nickname},#{type},#{sex})")
    void insertUser(RegisterBean bean);

    @Select("select * from user where account = #{account} and password = #{password} and type = #{type}")
    UserEntity checkUser(LoginBean bean);

    @Select("select * from user where account = #{account}")
    UserEntity isExisted(String account);
}
