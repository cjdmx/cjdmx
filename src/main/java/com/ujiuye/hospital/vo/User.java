package com.ujiuye.hospital.vo;

import com.ujiuye.hospital.bean.Administrator;
import com.ujiuye.hospital.bean.Doctor;
import com.ujiuye.hospital.bean.Patientregister;

import java.io.Serializable;

public class User implements Serializable {
    private String username;
    private String password;
    private int role_id;
    private String path;
    private Administrator admin;
    private Patientregister patient;
    private Doctor doctor;

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Administrator getAdmin() {
        return admin;
    }

    public void setAdmin(Administrator admin) {
        this.admin = admin;
    }

    public Patientregister getPatient() {
        return patient;
    }

    public void setPatient(Patientregister patient) {
        this.patient = patient;
    }

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }
}
