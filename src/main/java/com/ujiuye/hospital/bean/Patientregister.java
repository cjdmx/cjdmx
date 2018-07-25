package com.ujiuye.hospital.bean;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

@Component("Patientregister")
public class Patientregister implements Serializable {
    private Integer patient_id;

    private String patient_name;

    private String password;

    private Integer role_id;

    private String identification_no;

    private Integer age;

    private String sex;

    private String address_povince;

    private String address_city;

    private String phone;

    private Date create_date;

    private Date update_date;

    private String update_man;

    public Integer getPatient_id() {
        return patient_id;
    }

    public void setPatient_id(Integer patient_id) {
        this.patient_id = patient_id;
    }

    public String getPatient_name() {
        return patient_name;
    }

    public void setPatient_name(String patient_name) {
        this.patient_name = patient_name == null ? null : patient_name.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getRole_id() {
        return role_id;
    }

    public void setRole_id(Integer role_id) {
        this.role_id = role_id;
    }

    public String getIdentification_no() {
        return identification_no;
    }

    public void setIdentification_no(String identification_no) {
        this.identification_no = identification_no == null ? null : identification_no.trim();
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

    public String getAddress_povince() {
        return address_povince;
    }

    public void setAddress_povince(String address_povince) {
        this.address_povince = address_povince == null ? null : address_povince.trim();
    }

    public String getAddress_city() {
        return address_city;
    }

    public void setAddress_city(String address_city) {
        this.address_city = address_city == null ? null : address_city.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
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
        return "Patientregister{" +
                "patient_id=" + patient_id +
                ", patient_name='" + patient_name + '\'' +
                ", password='" + password + '\'' +
                ", role_id=" + role_id +
                ", identification_no='" + identification_no + '\'' +
                ", age=" + age +
                ", sex='" + sex + '\'' +
                ", address_povince='" + address_povince + '\'' +
                ", address_city='" + address_city + '\'' +
                ", phone='" + phone + '\'' +
                ", create_date=" + create_date +
                ", update_date=" + update_date +
                ", update_man='" + update_man + '\'' +
                '}';
    }
}