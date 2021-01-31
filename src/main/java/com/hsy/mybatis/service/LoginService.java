package com.hsy.mybatis.service;

import com.hsy.mybatis.entity.ConsignorEntity;
import com.hsy.mybatis.entity.ModelEntity;

public interface LoginService {
    String checkModel(String modelName,String modelPassword);

    ModelEntity getModel(String modelName);

    String checkConsignor(String consignorName,String consignorPassword);

    ConsignorEntity getConsignor(String consignorName);
}
