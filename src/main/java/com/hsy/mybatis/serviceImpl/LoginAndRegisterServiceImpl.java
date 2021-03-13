package com.hsy.mybatis.serviceImpl;

import com.hsy.mybatis.bean.LoginBean;
import com.hsy.mybatis.bean.RegisterBean;
import com.hsy.mybatis.entity.UserEntity;
import com.hsy.mybatis.mapper.ILoginAndRegisterMapper;
import com.hsy.mybatis.service.ILoginAndRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginAndRegisterServiceImpl implements ILoginAndRegisterService {

    @Autowired(required = false)
    private ILoginAndRegisterMapper loginAndRegisterMapper;

    @Override
    public void insertUser(String nickname, int type, String password, String sex, String phone) {
        RegisterBean bean = new RegisterBean();
        bean.setNickname(nickname);
        bean.setType(type);
        bean.setPassword(password);
        bean.setPhone(phone);
        bean.setSex(sex);

        loginAndRegisterMapper.insertUser(bean);
    }

    @Override
    public boolean checkUser(String account, String password, int type) {
        LoginBean bean = new LoginBean();
        bean.setAccount(account);
        bean.setPassword(password);
        bean.setType(type);
        UserEntity userEntity = loginAndRegisterMapper.checkUser(bean);
        if(userEntity != null){
            return true;
        }
        return false;
    }
}
