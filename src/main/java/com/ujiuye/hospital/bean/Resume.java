package com.ujiuye.hospital.bean;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

@Component("Resume")
public class Resume implements Serializable {
    private Integer resume_id;

    private String resume_name;

    private String resume_standard;

    private Date created_date;

    private Date updated_date;

    private String updated_man;

    public Integer getResume_id() {
        return resume_id;
    }

    public void setResume_id(Integer resume_id) {
        this.resume_id = resume_id;
    }

    public String getResume_name() {
        return resume_name;
    }

    public void setResume_name(String resume_name) {
        this.resume_name = resume_name == null ? null : resume_name.trim();
    }

    public String getResume_standard() {
        return resume_standard;
    }

    public void setResume_standard(String resume_standard) {
        this.resume_standard = resume_standard == null ? null : resume_standard.trim();
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