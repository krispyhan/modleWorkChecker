package com.hsy.mybatis.service;

public interface IExamineService {

    void confirmExamine(int id,int result);

    boolean checkExamine(String initiative,String passive);

}
