package com.ujiuye.hospital.service;

import com.ujiuye.hospital.bean.Patientregister;
import com.ujiuye.hospital.vo.PatientQuery;
import com.ujiuye.hospital.vo.PatientVo;

import java.util.List;

public interface PatientService {
    int savePatient(Patientregister patientregister);

    List<Patientregister> getAllPatient();

    List<Patientregister> getAllNoMedical();

    Patientregister getPatientById(Integer patient_id);

    List<PatientVo> search(PatientQuery query);
}
