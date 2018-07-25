package com.ujiuye.hospital.dao;

import com.ujiuye.hospital.bean.Positiontitle;

import java.util.List;

public interface PositiontitleMapper {
    int deleteByPrimaryKey(Integer position_id);

    int insert(Positiontitle record);

    int insertSelective(Positiontitle record);

    Positiontitle selectByPrimaryKey(Integer position_id);

    int updateByPrimaryKeySelective(Positiontitle record);

    int updateByPrimaryKey(Positiontitle record);

    List<Positiontitle> getAllPosition();

    Positiontitle getByName(String position_name);
}