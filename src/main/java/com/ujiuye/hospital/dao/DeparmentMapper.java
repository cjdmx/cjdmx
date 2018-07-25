package com.ujiuye.hospital.dao;

import com.ujiuye.hospital.bean.Deparment;

import java.util.List;

public interface DeparmentMapper {
    int deleteByPrimaryKey(Integer dept_id);

    int insert(Deparment record);

    int insertSelective(Deparment record);

    Deparment selectByPrimaryKey(Integer dept_id);

    int updateByPrimaryKeySelective(Deparment record);

    int updateByPrimaryKey(Deparment record);

    List<Deparment> getAllDepartment();

    Deparment getByDoctorId(Integer doctor_id);
}