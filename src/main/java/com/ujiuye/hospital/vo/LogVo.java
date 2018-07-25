package com.ujiuye.hospital.vo;

import com.ujiuye.hospital.bean.*;

import java.io.Serializable;
import java.util.Map;

public class LogVo extends Bespeaklog implements Serializable {
    Doctor doctor;
    Patientregister patient;
    Deparment dept;
    Worktime worktime;
    String weekName;

    public String getWeekName() {
        return weekName;
    }

    public void setWeekName(String weekName) {
        this.weekName = weekName;
    }


    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public Patientregister getPatient() {
        return patient;
    }

    public void setPatient(Patientregister patient) {
        this.patient = patient;
    }

    public Deparment getDept() {
        return dept;
    }

    public void setDept(Deparment dept) {
        this.dept = dept;
    }

    public Worktime getWorktime() {
        return worktime;
    }

    public void setWorktime(Worktime worktime) {
        this.worktime = worktime;
    }
}
