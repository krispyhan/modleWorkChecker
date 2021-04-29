package com.hsy.mybatis.bean;

public class MyReserveItem {
    private String initialNickname;

    private String contact;

    private String theme;

    private String time;

    private String status;

    private int id;

    public String getInitialNickname() {
        return initialNickname;
    }

    public void setInitialNickname(String initialNickname) {
        this.initialNickname = initialNickname;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
