package com.ujiuye.hospital.dao;

import com.ujiuye.hospital.bean.Leavemessage;
import com.ujiuye.hospital.vo.DoctorQuery;
import com.ujiuye.hospital.vo.LeavemessageVo;

import java.util.List;

public interface LeavemessageMapper {
    int deleteByPrimaryKey(Integer leave_id);

    int insert(Leavemessage record);

    int insertSelective(Leavemessage record);

    Leavemessage selectByPrimaryKey(Integer leave_id);

    int updateByPrimaryKeySelective(Leavemessage record);

    int updateByPrimaryKey(Leavemessage record);

    List<LeavemessageVo> searchLeavemsg(DoctorQuery doctor_id);
}