package com.ujiuye.hospital.bean;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

@Component("Bespeakstate")
public class Bespeakstate implements Serializable {
    private Integer id;

    private Integer doctor_id;

    private Integer monday_state;

    private Integer tuesday_state;

    private Integer wednesday_state;

    private Integer thursday_state;

    private Integer friday_state;

    private Integer saturday_state;

    private Integer sunday_state;

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

    public Integer getMonday_state() {
        return monday_state;
    }

    public void setMonday_state(Integer monday_state) {
        this.monday_state = monday_state;
    }

    public Integer getTuesday_state() {
        return tuesday_state;
    }

    public void setTuesday_state(Integer tuesday_state) {
        this.tuesday_state = tuesday_state;
    }

    public Integer getWednesday_state() {
        return wednesday_state;
    }

    public void setWednesday_state(Integer wednesday_state) {
        this.wednesday_state = wednesday_state;
    }

    public Integer getThursday_state() {
        return thursday_state;
    }

    public void setThursday_state(Integer thursday_state) {
        this.thursday_state = thursday_state;
    }

    public Integer getFriday_state() {
        return friday_state;
    }

    public void setFriday_state(Integer friday_state) {
        this.friday_state = friday_state;
    }

    public Integer getSaturday_state() {
        return saturday_state;
    }

    public void setSaturday_state(Integer saturday_state) {
        this.saturday_state = saturday_state;
    }

    public Integer getSunday_state() {
        return sunday_state;
    }

    public void setSunday_state(Integer sunday_state) {
        this.sunday_state = sunday_state;
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