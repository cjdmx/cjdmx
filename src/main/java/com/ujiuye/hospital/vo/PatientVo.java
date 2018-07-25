package com.ujiuye.hospital.vo;

import com.ujiuye.hospital.bean.Doctorreplymessage;
import com.ujiuye.hospital.bean.Medicalhistory;
import com.ujiuye.hospital.bean.Patientregister;

import java.io.Serializable;

public class PatientVo extends Patientregister implements Serializable {
    private Medicalhistory medicalhistory;

    private Doctorreplymessage reply;

    public Doctorreplymessage getReply() {
        return reply;
    }

    public void setReply(Doctorreplymessage reply) {
        this.reply = reply;
    }

    public Medicalhistory getMedicalhistory() {
        return medicalhistory;
    }

    public void setMedicalhistory(Medicalhistory medicalhistory) {
        this.medicalhistory = medicalhistory;
    }
}
