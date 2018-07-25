package com.ujiuye.hospital.vo;

import com.ujiuye.hospital.bean.Doctor;
import com.ujiuye.hospital.bean.Doctorreplymessage;
import com.ujiuye.hospital.bean.Patientregister;

import javax.print.Doc;

public class ReplyVo extends Doctorreplymessage {
    Doctor doctor;
    Patientregister patient;

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }
}
