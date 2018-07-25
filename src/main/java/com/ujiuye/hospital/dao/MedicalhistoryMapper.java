package com.ujiuye.hospital.dao;

import com.ujiuye.hospital.bean.Medicalhistory;
import com.ujiuye.hospital.vo.PatientQuery;
import com.ujiuye.hospital.vo.PatientVo;

import java.util.List;

public interface MedicalhistoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Medicalhistory record);

    int insertSelective(Medicalhistory record);

    Medicalhistory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Medicalhistory record);

    int updateByPrimaryKey(Medicalhistory record);

    Medicalhistory selectByPatientId(Integer patient_id);

}