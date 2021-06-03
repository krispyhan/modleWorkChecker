package com.hsy.mybatis.mapper;

import com.hsy.mybatis.bean.LoginBean;
import com.hsy.mybatis.bean.UserBean;
import com.hsy.mybatis.entity.UserEntity;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface IExamineMapper {

    @Update("update user u set u.certificate = #{certificate} where id = #{id}")
    void confirmExamine(int id,int certificate);

    @Select("select * from user where nickname = #{nickname} and certificate = 1")
    UserEntity checkExamine(UserBean bean);

}

