package com.ujiuye.hospital.dao;

import com.ujiuye.hospital.bean.Bespeakstate;
import org.apache.ibatis.annotations.Param;

public interface BespeakstateMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Bespeakstate record);

    int insertSelective(Bespeakstate record);

    Bespeakstate selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Bespeakstate record);

    int updateByPrimaryKey(Bespeakstate record);

    Bespeakstate selectByDoctorId(Integer doctor_id);

    int subtract(@Param("bespeak_date") String bespeak_date,@Param("doctor_id")Integer doctor_id);
}