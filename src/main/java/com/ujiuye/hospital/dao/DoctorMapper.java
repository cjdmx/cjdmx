package com.ujiuye.hospital.dao;

import com.ujiuye.hospital.bean.Administrator;
import com.ujiuye.hospital.bean.Doctor;
import com.ujiuye.hospital.vo.DoctorQuery;
import com.ujiuye.hospital.vo.DoctorVo;
import com.ujiuye.hospital.vo.WorkTimeVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DoctorMapper {
    int deleteByPrimaryKey(Integer doctor_id);

    int insert(Doctor record);

    int insertSelective(Doctor record);

    Doctor selectByPrimaryKey(Integer doctor_id);

    int updateByPrimaryKeySelective(Doctor record);

    int updateByPrimaryKey(Doctor record);

    List<Doctor> getAllDoctor();

    Doctor login(@Param("username")String username, @Param("password")String password);

    List<DoctorVo> searchDoctor(DoctorQuery query);

    List<DoctorVo> getDoctorByDeptId(Integer dept_id);

    DoctorVo getVoById(Integer doctor_id);
}