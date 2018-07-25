package com.ujiuye.hospital.bean;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

@Component("Positiontitle")
public class Positiontitle implements Serializable {
    private Integer position_id;

    private String position_name;

    private String position_standard;

    private Date created_date;

    private Date updated_date;

    private String update_man;

    public Integer getPosition_id() {
        return position_id;
    }

    public void setPosition_id(Integer position_id) {
        this.position_id = position_id;
    }

    public String getPosition_name() {
        return position_name;
    }

    public void setPosition_name(String position_name) {
        this.position_name = position_name == null ? null : position_name.trim();
    }

    public String getPosition_standard() {
        return position_standard;
    }

    public void setPosition_standard(String position_standard) {
        this.position_standard = position_standard == null ? null : position_standard.trim();
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

    public String getUpdate_man() {
        return update_man;
    }

    public void setUpdate_man(String update_man) {
        this.update_man = update_man == null ? null : update_man.trim();
    }

    @Override
    public String toString() {
        return "Positiontitle{" +
                "position_id=" + position_id +
                ", position_name='" + position_name + '\'' +
                ", position_standard='" + position_standard + '\'' +
                '}';
    }
}