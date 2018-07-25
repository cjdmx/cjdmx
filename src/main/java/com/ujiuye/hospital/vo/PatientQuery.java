package com.ujiuye.hospital.vo;

import com.ujiuye.hospital.bean.Patientregister;

public class PatientQuery extends Patientregister {
    Integer maxAge;
    Integer minAge;
    String medical_date;

    public Integer getMaxAge() {
        return maxAge;
    }

    public void setMaxAge(Integer maxAge) {
        this.maxAge = maxAge;
    }

    public Integer getMinAge() {
        return minAge;
    }

    public void setMinAge(Integer minAge) {
        this.minAge = minAge;
    }

    public String getMedical_date() {
        return medical_date;
    }

    public void setMedical_date(String medical_date) {
        this.medical_date = medical_date;
    }
}
