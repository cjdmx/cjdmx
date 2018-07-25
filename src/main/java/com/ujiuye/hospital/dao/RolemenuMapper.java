package com.ujiuye.hospital.dao;

import com.ujiuye.hospital.bean.Rolemenu;

public interface RolemenuMapper {
    int deleteByPrimaryKey(Integer role_id);

    int insert(Rolemenu record);

    int insertSelective(Rolemenu record);

    Rolemenu selectByPrimaryKey(Integer role_id);

    int updateByPrimaryKeySelective(Rolemenu record);

    int updateByPrimaryKey(Rolemenu record);
}