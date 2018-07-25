package com.ujiuye.hospital.service;

import com.ujiuye.hospital.bean.Medicalhistory;
import com.ujiuye.hospital.vo.PatientQuery;
import com.ujiuye.hospital.vo.PatientVo;

import java.util.List;

public interface MedicalService {

    int saveMedical(Medicalhistory medicalhistory);

    Medicalhistory selectByPatientId(Integer patient_id);

    int updateMedical(Medicalhistory medicalhistory);
}
