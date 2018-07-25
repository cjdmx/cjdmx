package com.ujiuye.hospital.dao;

import com.ujiuye.hospital.bean.Administrator;
import com.ujiuye.hospital.bean.Patientregister;
import com.ujiuye.hospital.vo.PatientQuery;
import com.ujiuye.hospital.vo.PatientVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PatientregisterMapper {
    int deleteByPrimaryKey(Integer patient_id);

    int insert(Patientregister record);

    int insertSelective(Patientregister record);

    Patientregister selectByPrimaryKey(Integer patient_id);

    int updateByPrimaryKeySelective(Patientregister record);

    int updateByPrimaryKey(Patientregister record);

    Patientregister login(@Param("username")String username, @Param("password")String password);

    List<Patientregister> getAllPatient();

    List<Patientregister> getAllNoMedical();

    List<PatientVo> search(PatientQuery query);
}