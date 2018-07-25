package com.ujiuye.hospital.vo;

import com.ujiuye.hospital.bean.Leavemessage;
import com.ujiuye.hospital.bean.Patientregister;

public class LeavemessageVo extends Leavemessage {
    Patientregister patient;

    public Patientregister getPatient() {
        return patient;
    }

    public void setPatient(Patientregister patient) {
        this.patient = patient;
    }
}
