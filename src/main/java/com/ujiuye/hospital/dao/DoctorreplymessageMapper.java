package com.ujiuye.hospital.dao;

import com.sun.corba.se.impl.protocol.giopmsgheaders.ReplyMessage;
import com.ujiuye.hospital.bean.Doctor;
import com.ujiuye.hospital.bean.Doctorreplymessage;
import com.ujiuye.hospital.vo.ReplyVo;

import java.util.List;

public interface DoctorreplymessageMapper {
    int deleteByPrimaryKey(Integer drm_id);

    int insert(Doctorreplymessage record);

    int insertSelective(Doctorreplymessage record);

    Doctorreplymessage selectByPrimaryKey(Integer drm_id);

    int updateByPrimaryKeySelective(Doctorreplymessage record);

    int updateByPrimaryKey(Doctorreplymessage record);

    Doctorreplymessage selectByPatientId(Integer patient_id);

    List<ReplyVo> getByPatientId(Integer patient_id);
}