package com.ujiuye.hospital.bean;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

@Component("Rolemenu")
public class Rolemenu implements Serializable {
    private Integer role_id;

    private Integer menu_id;

    private Date created_date;

    private Date updated_date;

    private String updated_man;

    public Integer getRole_id() {
        return role_id;
    }

    public void setRole_id(Integer role_id) {
        this.role_id = role_id;
    }

    public Integer getMenu_id() {
        return menu_id;
    }

    public void setMenu_id(Integer menu_id) {
        this.menu_id = menu_id;
    }

    public Date getCreated_date() {
        return created_date;
    }

    public void setCreated_date(Date created_date) {
        this.created_date = created_date;
    }

    public Date getUpdated_date() {
        return updated_date;
    }

    public void setUpdated_date(Date updated_date) {
        this.updated_date = updated_date;
    }

    public String getUpdated_man() {
        return updated_man;
    }

    public void setUpdated_man(String updated_man) {
        this.updated_man = updated_man == null ? null : updated_man.trim();
    }
}