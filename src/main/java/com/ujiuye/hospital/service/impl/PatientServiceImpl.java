package com.ujiuye.hospital.service.impl;

import com.ujiuye.hospital.bean.Patientregister;
import com.ujiuye.hospital.dao.PatientregisterMapper;
import com.ujiuye.hospital.service.PatientService;
import com.ujiuye.hospital.vo.PatientQuery;
import com.ujiuye.hospital.vo.PatientVo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PatientServiceImpl implements PatientService {

    @Resource
    PatientregisterMapper patientMapper;

    @Override
    public int savePatient(Patientregister patientregister) {
        return patientMapper.insertSelective(patientregister);
    }

    @Override
    public List<Patientregister> getAllPatient() {
        return patientMapper.getAllPatient();
    }

    public List<Patientregister> getAllNoMedical(){
        return patientMapper.getAllNoMedical();
    }

    @Override
    public Patientregister getPatientById(Integer patient_id) {
        return patientMapper.selectByPrimaryKey(patient_id);
    }

    @Override
    public List<PatientVo> search(PatientQuery query) {
        return patientMapper.search(query);
    }
}
