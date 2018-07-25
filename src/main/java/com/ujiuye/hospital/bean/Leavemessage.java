package com.ujiuye.hospital.bean;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

@Component("Leavemessage")
public class Leavemessage implements Serializable {
    private Integer leave_id;

    private Integer patient_id;

    private Integer doctor_id;

    private String message_title;

    private String message_content;

    private Integer isreading;

    private Date created_date;

    private Date updated_date;

    private String updated_man;

    public Integer getLeave_id() {
        return leave_id;
    }

    public void setLeave_id(Integer leave_id) {
        this.leave_id = leave_id;
    }

    public Integer getPatient_id() {
        return patient_id;
    }

    public void setPatient_id(Integer patient_id) {
        this.patient_id = patient_id;
    }

    public Integer getDoctor_id() {
        return doctor_id;
    }

    public void setDoctor_id(Integer doctor_id) {
        this.doctor_id = doctor_id;
    }

    public String getMessage_title() {
        return message_title;
    }

    public void setMessage_title(String message_title) {
        this.message_title = message_title == null ? null : message_title.trim();
    }

    public String getMessage_content() {
        return message_content;
    }

    public void setMessage_content(String message_content) {
        this.message_content = message_content == null ? null : message_content.trim();
    }

    public Integer getIsreading() {
        return isreading;
    }

    public void setIsreading(Integer isreading) {
        this.isreading = isreading;
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