package com.ujiuye.hospital.dao;

import com.ujiuye.hospital.bean.Doctorworklog;

import java.util.List;

public interface DoctorworklogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Doctorworklog record);

    int insertSelective(Doctorworklog record);

    Doctorworklog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Doctorworklog record);

    int updateByPrimaryKey(Doctorworklog record);

    List<Doctorworklog> searchWorklog(Doctorworklog doctorworklog);
}