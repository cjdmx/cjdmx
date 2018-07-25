package com.ujiuye.hospital.dao;

import com.ujiuye.hospital.bean.Bespeakmaxamount;
import com.ujiuye.hospital.bean.Doctor;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BespeakmaxamountMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Bespeakmaxamount record);

    int insertSelective(Bespeakmaxamount record);

    Bespeakmaxamount selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Bespeakmaxamount record);

    int updateByPrimaryKey(Bespeakmaxamount record);

    int updateMax(@Param("doctor_id")Integer doctor_id,@Param("number")Integer number);

    Bespeakmaxamount selectByDoctorId(Integer doctor_id);

    Integer addCount(Integer doctor_id);

    int subtract(Integer doctor_id);
}