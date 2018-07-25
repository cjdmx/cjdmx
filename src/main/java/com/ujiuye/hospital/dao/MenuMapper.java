package com.ujiuye.hospital.dao;

import com.ujiuye.hospital.bean.Menu;

public interface MenuMapper {
    int deleteByPrimaryKey(Integer menu_id);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Integer menu_id);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);
}