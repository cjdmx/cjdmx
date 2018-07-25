package com.ujiuye.hospital.bean;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

@Component("Doctor")
public class Doctor implements Serializable {
    private Integer doctor_id;

    private String name;

    private Integer role_id;

    private String password;

    private Integer age;

    private String sex;

    private Integer dept_id;

    private String address_province;

    private String address_city;

    private Integer positiontitle_id;

    private Integer resume_id;

    private String mobile_phone;

    private String office_phone;

    private String desc_title;

    private String desc_context;

    private Date create_date;

    private Date update_date;

    private String update_man;

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

    public Integer getRole_id() {
        return role_id;
    }

    public void setRole_id(Integer role_id) {
        this.role_id = role_id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Integer getDept_id() {
        return dept_id;
    }

    public void setDept_id(Integer dept_id) {
        this.dept_id = dept_id;
    }

    public String getAddress_province() {
        return address_province;
    }

    public void setAddress_province(String address_province) {
        this.address_province = address_province == null ? null : address_province.trim();
    }

    public String getAddress_city() {
        return address_city;
    }

    public void setAddress_city(String address_city) {
        this.address_city = address_city == null ? null : address_city.trim();
    }

    public Integer getPositiontitle_id() {
        return positiontitle_id;
    }

    public void setPositiontitle_id(Integer positiontitle_id) {
        this.positiontitle_id = positiontitle_id;
    }

    public Integer getResume_id() {
        return resume_id;
    }

    public void setResume_id(Integer resume_id) {
        this.resume_id = resume_id;
    }

    public String getMobile_phone() {
        return mobile_phone;
    }

    public void setMobile_phone(String mobile_phone) {
        this.mobile_phone = mobile_phone == null ? null : mobile_phone.trim();
    }

    public String getOffice_phone() {
        return office_phone;
    }

    public void setOffice_phone(String office_phone) {
        this.office_phone = office_phone == null ? null : office_phone.trim();
    }

    public String getDesc_title() {
        return desc_title;
    }

    public void setDesc_title(String desc_title) {
        this.desc_title = desc_title == null ? null : desc_title.trim();
    }

    public String getDesc_context() {
        return desc_context;
    }

    public void setDesc_context(String desc_context) {
        this.desc_context = desc_context == null ? null : desc_context.trim();
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

    @Override
    public String toString() {
        return "Doctor{" +
                "doctor_id=" + doctor_id +
                ", name='" + name + '\'' +
                ", role_id=" + role_id +
                ", password='" + password + '\'' +
                ", age=" + age +
                ", sex='" + sex + '\'' +
                ", dept_id=" + dept_id +
                ", address_province='" + address_province + '\'' +
                ", address_city='" + address_city + '\'' +
                ", positiontitle_id=" + positiontitle_id +
                ", resume_id=" + resume_id +
                ", mobile_phone='" + mobile_phone + '\'' +
                ", office_phone='" + office_phone + '\'' +
                ", desc_title='" + desc_title + '\'' +
                ", desc_context='" + desc_context + '\'' +
                ", create_date=" + create_date +
                ", update_date=" + update_date +
                ", update_man='" + update_man + '\'' +
                '}';
    }
}