package com.ujiuye.hospital.vo;

import com.ujiuye.hospital.bean.Bespeakmaxamount;
import com.ujiuye.hospital.bean.Deparment;
import com.ujiuye.hospital.bean.Doctor;
import com.ujiuye.hospital.bean.Worktime;

import java.io.Serializable;
import java.util.Map;

public class WorkTimeVo extends Worktime implements Serializable {

    Doctor doctor;

    Deparment deparment;

    Bespeakmaxamount max;

    Map<String,String> weekMap;

    public Map<String, String> getWeekMap() {
        return weekMap;
    }

    public void setWeekMap(Map<String, String> weekMap) {
        this.weekMap = weekMap;
    }

    public Bespeakmaxamount getMax() {
        return max;
    }

    public void setMax(Bespeakmaxamount max) {
        this.max = max;
    }

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public Deparment getDeparment() {
        return deparment;
    }

    public void setDeparment(Deparment deparment) {
        this.deparment = deparment;
    }
}
