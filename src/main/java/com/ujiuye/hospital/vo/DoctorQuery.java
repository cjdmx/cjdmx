package com.ujiuye.hospital.vo;

import com.ujiuye.hospital.bean.Doctor;

import java.io.Serializable;
import java.util.Date;

public class DoctorQuery extends Doctor implements Serializable {

    Integer maxAge;
    Integer minAge;
    String sex;
    String patient_name;
    String work_date;
    Date start_date;
    Date end_date;


    public String getPatient_name() {
        return patient_name;
    }

    public void setPatient_name(String patient_name) {
        this.patient_name = patient_name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getWork_date() {
        return work_date;
    }

    public void setWork_date(String work_date) {
        this.work_date = work_date;
    }

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

    public Date getStart_date() {
        return start_date;
    }

    public void setStart_date(Date start_date) {
        this.start_date = start_date;
    }

    public Date getEnd_date() {
        return end_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
    }



    @Override
    public String toString() {
        return "DoctorQuery{" +
                "maxAge=" + maxAge +
                ", minAge=" + minAge +
                ", start_date=" + start_date +
                ", end_date=" + end_date +
                '}';
    }
}
