package com.hsy.mybatis.entity;

public class ConsignorEntity {

    private int consignorId;
    private String consignorName;
    private String consignorPassword;
    private String consignorPhone;

    public int getConsignorId() {
        return consignorId;
    }

    public void setConsignorId(int consignorId) {
        this.consignorId = consignorId;
    }

    public String getConsignorName() {
        return consignorName;
    }

    public void setConsignorName(String consignorName) {
        this.consignorName = consignorName;
    }

    public String getConsignorPassword() {
        return consignorPassword;
    }

    public void setConsignorPassword(String consignorPassword) {
        this.consignorPassword = consignorPassword;
    }

    public String getConsignorPhone() {
        return consignorPhone;
    }

    public void setConsignorPhone(String consignorPhone) {
        this.consignorPhone = consignorPhone;
    }

    public boolean equals(Object o){

        if(this == o) return true;
        if(o == null || getClass() != o.getClass()) return false;

        ConsignorEntity that = (ConsignorEntity) o;

        if(consignorId != that.consignorId) return false;
        if(consignorName !=null ?! consignorName.equals(that.consignorName) : that.consignorName!=null) return false;
        if(consignorPassword !=null ?! consignorPassword.equals(that.consignorPassword) : that.consignorPassword!=null) return false;
        if(consignorPhone !=null ?! consignorPhone.equals(that.consignorPhone) : that.consignorPhone!=null) return false;

        return true;
    }

}
