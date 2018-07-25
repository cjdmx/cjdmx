package com.ujiuye.hospital.bean;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

@Component("Doctorwordplan")
public class Doctorwordplan implements Serializable {
    private Integer dwp_id;

    private Integer doctor_id;

    private String name;

    private Date start_time;

    private Date end_time;

    private String delay;

    private String content;

    private String accesssorytitle;

    private String accessoriness;

    private String remark;

    private Date create_date;

    private Date update_date;

    private String update_man;

    public Integer getDwp_id() {
        return dwp_id;
    }

    public void setDwp_id(Integer dwp_id) {
        this.dwp_id = dwp_id;
    }

    public Integer getDoctor_id() {
        return doctor_id;
    }

    public void setDoctor_id(Integer doctor_id) {
        this.doctor_id = doctor_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Date getStart_time() {
        return start_time;
    }

    public void setStart_time(Date start_time) {
        this.start_time = start_time;
    }

    public Date getEnd_time() {
        return end_time;
    }

    public void setEnd_time(Date end_time) {
        this.end_time = end_time;
    }

    public String getDelay() {
        return delay;
    }

    public void setDelay(String delay) {
        this.delay = delay == null ? null : delay.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getAccesssorytitle() {
        return accesssorytitle;
    }

    public void setAccesssorytitle(String accesssorytitle) {
        this.accesssorytitle = accesssorytitle == null ? null : accesssorytitle.trim();
    }

    public String getAccessoriness() {
        return accessoriness;
    }

    public void setAccessoriness(String accessoriness) {
        this.accessoriness = accessoriness == null ? null : accessoriness.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }

    public Date getUpdate_date() {
        return update_date;
    }

    public void setUpdate_date(Date update_date) {
        this.update_date = update_date;
    }

    public String getUpdate_man() {
        return update_man;
    }

    public void setUpdate_man(String update_man) {
        this.update_man = update_man == null ? null : update_man.trim();
    }
}