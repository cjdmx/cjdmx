package com.ujiuye.hospital.service.impl;

import com.ujiuye.hospital.bean.Medicalhistory;
import com.ujiuye.hospital.bean.Patientregister;
import com.ujiuye.hospital.dao.MedicalhistoryMapper;
import com.ujiuye.hospital.service.MedicalService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service("medicalService")
public class MedicalServiceImpl implements MedicalService {
    @Resource
    MedicalhistoryMapper medicalMapper;

    /*创建病例，把详情前10个字符作为简要*/
    @Override
    public int saveMedical(Medicalhistory medicalhistory) {
        medicalhistory.setCreate_date(new Date());
        medicalhistory.setDirctions(medicalhistory.getDirectionDetail().substring(0,10));
        return medicalMapper.insertSelective(medicalhistory);
    }

    /*通过病人ID获取病例*/
    @Override
    public Medicalhistory selectByPatientId(Integer patient_id) {
        return medicalMapper.selectByPatientId(patient_id);
    }

    /*更新病例*/
    @Override
    public int updateMedical(Medicalhistory medicalhistory) {
        return medicalMapper.updateByPrimaryKeySelective(medicalhistory);
    }

}
