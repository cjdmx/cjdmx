package com.ujiuye.hospital.bean;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

@Component("Bespeaklog")
public class Bespeaklog implements Serializable {
    private Integer id;

    private Integer patient_id;

    private Integer doctor_id;

    private Date created_date;

    private Date updated_date;

    private String updated_man;

    private String bespeak_date;

    public String getBespeak_date() {
        return bespeak_date;
    }

    public void setBespeak_date(String bespeak_date) {
        this.bespeak_date = bespeak_date;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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