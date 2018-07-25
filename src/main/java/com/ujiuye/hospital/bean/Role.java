package com.ujiuye.hospital.bean;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

@Component("Role")
public class Role implements Serializable {
    private Integer role_id;

    private String role_name;

    private String role_desc;

    private Date created_date;

    private Date updated_date;

    private String updated_man;

    public Integer getRole_id() {
        return role_id;
    }

    public void setRole_id(Integer role_id) {
        this.role_id = role_id;
    }

    public String getRole_name() {
        return role_name;
    }

    public void setRole_name(String role_name) {
        this.role_name = role_name == null ? null : role_name.trim();
    }

    public String getRole_desc() {
        return role_desc;
    }

    public void setRole_desc(String role_desc) {
        this.role_desc = role_desc == null ? null : role_desc.trim();
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