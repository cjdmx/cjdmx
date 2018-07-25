package com.ujiuye.hospital.dao;

import com.ujiuye.hospital.bean.Doctorwordplan;

import java.util.List;

public interface DoctorwordplanMapper {
    int deleteByPrimaryKey(Integer dwp_id);

    int insert(Doctorwordplan record);

    int insertSelective(Doctorwordplan record);

    Doctorwordplan selectByPrimaryKey(Integer dwp_id);

    int updateByPrimaryKeySelective(Doctorwordplan record);

    int updateByPrimaryKey(Doctorwordplan record);

    List<Doctorwordplan> searchWorkPlan(Doctorwordplan doctorwordplan);
}