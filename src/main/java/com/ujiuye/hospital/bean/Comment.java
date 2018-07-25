package com.ujiuye.hospital.bean;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

@Component("Comment")
public class Comment implements Serializable {
    private Integer c_id;

    private Integer c_newsid;

    private String c_name;

    private Date c_date;

    private String c_content;

    public Integer getC_id() {
        return c_id;
    }

    public void setC_id(Integer c_id) {
        this.c_id = c_id;
    }

    public Integer getC_newsid() {
        return c_newsid;
    }

    public void setC_newsid(Integer c_newsid) {
        this.c_newsid = c_newsid;
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name == null ? null : c_name.trim();
    }

    public Date getC_date() {
        return c_date;
    }

    public void setC_date(Date c_date) {
        this.c_date = c_date;
    }

    public String getC_content() {
        return c_content;
    }

    public void setC_content(String c_content) {
        this.c_content = c_content == null ? null : c_content.trim();
    }
}