package com.ujiuye.hospital.dao;

import com.ujiuye.hospital.bean.Bespeaklog;
import com.ujiuye.hospital.vo.LogVo;

import java.util.List;

public interface BespeaklogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Bespeaklog record);

    int insertSelective(Bespeaklog record);

    Bespeaklog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Bespeaklog record);

    int updateByPrimaryKey(Bespeaklog record);

    int checkRepeat(Bespeaklog log);

    List<LogVo> getLogByPatientId(Integer patient_id);

    int delete(Bespeaklog log);
}