package com.hsy.mybatis.serviceImpl;

import com.hsy.mybatis.bean.UserBean;
import com.hsy.mybatis.entity.UserEntity;
import com.hsy.mybatis.mapper.IExamineMapper;
import com.hsy.mybatis.service.IExamineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExamineServiceImpl implements IExamineService {

    @Autowired(required = false)
    private IExamineMapper examineMapper;

    @Override
    public void confirmExamine(int id, int result) {
          examineMapper.confirmExamine(id, result);
    }

    @Override
    public boolean checkExamine(String initiative, String passive) {
        UserBean initiativeBean = new UserBean();
        UserBean passiveBean = new UserBean();
        initiativeBean.setNickname(initiative);
        passiveBean.setNickname(passive);
        UserEntity initiativeEntity = examineMapper.checkExamine(initiativeBean);
        UserEntity passiveEntity = examineMapper.checkExamine(passiveBean);
        if(initiativeEntity != null && passiveEntity != null){
            return true;
        }

        return false;
    }
}
