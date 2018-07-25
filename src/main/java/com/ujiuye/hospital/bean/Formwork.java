package com.ujiuye.hospital.bean;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

@Component("Formwork")
public class Formwork implements Serializable {
    private Integer formwork_id;

    private String name;

    private String type;

    private String template;

    private Integer dept_id;

    private String directions;

    private Date create_date;

    private Date update_date;

    private String update_man;

    public Integer getFormwork_id() {
        return formwork_id;
    }

    public void setFormwork_id(Integer formwork_id) {
        this.formwork_id = formwork_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getTemplate() {
        return template;
    }

    public void setTemplate(String template) {
        this.template = template == null ? null : template.trim();
    }

    public Integer getDept_id() {
        return dept_id;
    }

    public void setDept_id(Integer dept_id) {
        this.dept_id = dept_id;
    }

    public String getDirections() {
        return directions;
    }

    public void setDirections(String directions) {
        this.directions = directions == null ? null : directions.trim();
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