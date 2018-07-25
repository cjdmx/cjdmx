package com.ujiuye.hospital.dao;

import com.ujiuye.hospital.bean.Formwork;

        import java.util.List;

public interface FormworkMapper {
    int deleteByPrimaryKey(Integer formwork_id);

    int insert(Formwork record);

    int insertSelective(Formwork record);

    Formwork selectByPrimaryKey(Integer formwork_id);

    int updateByPrimaryKeySelective(Formwork record);

    int updateByPrimaryKey(Formwork record);

    List<Formwork> searchFormWork(Formwork formwork);
}