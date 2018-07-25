package com.ujiuye.hospital.bean;

import java.util.Date;

public class Medicalhistory {
    private Integer id;

    private Integer patient_id;

    private Integer doctor_id;

    private String dirctions;

    private String directionDetail;

    private Date create_date;

    private Date updated_date;

    private String updated_man;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPatient_id() {
        return patient_id;
    }

    public void setPatient_id(Integer patient_id) {
        this.patient_id = patient_id;
    }

    public Integer getDoctor_id() {
        return doctor_id;
    }

    public void setDoctor_id(Integer doctor_id) {
        this.doctor_id = doctor_id;
    }

    public String getDirctions() {
        return dirctions;
    }

    public void setDirctions(String dirctions) {
        this.dirctions = dirctions == null ? null : dirctions.trim();
    }

    public String getDirectionDetail() {
        return directionDetail;
    }

    public void setDirectionDetail(String directionDetail) {
        this.directionDetail = directionDetail == null ? null : directionDetail.trim();
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }

    public Date getUpdated_date() {
        return updated_date;
    }

    public void setUpdated_date(Date updated_date) {
        this.updated_date = updated_date;
    }

    public String getUpdated_man() {
        return updated_man;
    }

    public void setUpdated_man(String updated_man) {
        this.updated_man = updated_man == null ? null : updated_man.trim();
    }

    @Override
    public String toString() {
        return "Medicalhistory{" +
                "id=" + id +
                ", patient_id=" + patient_id +
                ", doctor_id=" + doctor_id +
                ", dirctions='" + dirctions + '\'' +
                ", directionDetail='" + directionDetail + '\'' +
                ", create_date=" + create_date +
                ", updated_date=" + updated_date +
                ", updated_man='" + updated_man + '\'' +
                '}';
    }
}