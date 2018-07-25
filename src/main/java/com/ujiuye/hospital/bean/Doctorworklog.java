package com.ujiuye.hospital.bean;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

@Component("Doctorworklog")
public class Doctorworklog implements Serializable {
    private Integer id;

    private Integer doctor_id;

    private String name;

    private Date time;

    private String summarization;

    private String remark;

    private String accessorytitle;

    private String accessoriness;

    private Date create_date;

    private Date update_date;

    private String update_man;

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getSummarization() {
        return summarization;
    }

    public void setSummarization(String summarization) {
        this.summarization = summarization == null ? null : summarization.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getAccessorytitle() {
        return accessorytitle;
    }

    public void setAccessorytitle(String accessorytitle) {
        this.accessorytitle = accessorytitle == null ? null : accessorytitle.trim();
    }

    public String getAccessoriness() {
        return accessoriness;
    }

    public void setAccessoriness(String accessoriness) {
        this.accessoriness = accessoriness == null ? null : accessoriness.trim();
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