package com.hsy.mybatis.entity;

import org.springframework.format.datetime.joda.LocalDateTimeParser;

import java.util.Date;


public class ReservationEntity {

    private String theme;

    private String contact;

    private Date time;

    private String content;

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }


    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
