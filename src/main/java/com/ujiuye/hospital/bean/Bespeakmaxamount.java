package com.ujiuye.hospital.bean;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

@Component
public class Bespeakmaxamount implements Serializable {
    private Integer id;

    private Integer doctor_id;

    private Integer dept_id;

    private Date settime;

    private Integer bespeak_amount;

    private Integer max_amoun;

    private Date start_date;

    private Date end_date;

    private Date created_date;

    private Date updated_date;

    private String updated_man;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getDoctor_id() {
        return doctor_id;
    }

    public void setDoctor_id(Integer doctor_id) {
        this.doctor_id = doctor_id;
    }

    public Integer getDept_id() {
        return dept_id;
    }

    public void setDept_id(Integer dept_id) {
        this.dept_id = dept_id;
    }

    public Date getSettime() {
        return settime;
    }

    public void setSettime(Date settime) {
        this.settime = settime;
    }

    public Integer getBespeak_amount() {
        return bespeak_amount;
    }

    public void setBespeak_amount(Integer bespeak_amount) {
        this.bespeak_amount = bespeak_amount;
    }

    public Integer getMax_amoun() {
        return max_amoun;
    }

    public void setMax_amoun(Integer max_amoun) {
        this.max_amoun = max_amoun;
    }

    public Date getStart_date() {
        return start_date;
    }

    public void setStart_date(Date start_date) {
        this.start_date = start_date;
    }

    public Date getEnd_date() {
        return end_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
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