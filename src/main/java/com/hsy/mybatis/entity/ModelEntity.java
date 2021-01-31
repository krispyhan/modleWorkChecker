package com.hsy.mybatis.entity;


public class ModelEntity {
    private int modelId;
    private String modelName;
    private String modelPassword;
    private String modelSex;
    private String modelHeight;
    private String modelWeight;
    private String modelWaistline;
    private String modelphone;


    public int getModelId() {
        return modelId;
    }

    public void setModelId(int modelId) {
        this.modelId = modelId;
    }

    public String getModelName() {
        return modelName;
    }

    public void setModelName(String modelName) {
        this.modelName = modelName;
    }

    public String getModelPassword() {
        return modelPassword;
    }

    public void setModelPassword(String modelPassword) {
        this.modelPassword = modelPassword;
    }

    public String getModelSex() {
        return modelSex;
    }

    public void setModelSex(String modelSex) {
        this.modelSex = modelSex;
    }

    public String getModelHeight() {
        return modelHeight;
    }

    public void setModelHeight(String modelHeight) {
        this.modelHeight = modelHeight;
    }

    public String getModelWeight() {
        return modelWeight;
    }

    public void setModelWeight(String modelWeight) {
        this.modelWeight = modelWeight;
    }

    public String getModelWaistline() {
        return modelWaistline;
    }

    public void setModelWaistline(String modelWaistline) {
        this.modelWaistline = modelWaistline;
    }

    public String getModelphone() {
        return modelphone;
    }

    public void setModelphone(String modelphone) {
        this.modelphone = modelphone;
    }

    public boolean equals(Object o){

        if(this == o) return true;
        if(o == null || getClass() != o.getClass()) return false;

        ModelEntity that = (ModelEntity) o;

        if(modelId !=that.modelId) return false;
        if(modelName != null ?! modelName.equals(that.modelName) : that.modelName!=null) return false;
        if(modelPassword != null ?! modelPassword.equals(that.modelPassword) : that.modelPassword!=null) return false;

        return true;
    }

}
