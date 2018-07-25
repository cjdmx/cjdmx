package com.ujiuye.hospital.dao;

import com.ujiuye.hospital.bean.Doctor;
import com.ujiuye.hospital.bean.Worktime;
import com.ujiuye.hospital.vo.WorkTimeQuery;
import com.ujiuye.hospital.vo.WorkTimeVo;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface WorktimeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Worktime record);

    int insertSelective(Worktime record);

    WorkTimeVo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Worktime record);

    int updateByPrimaryKey(Worktime record);

    int updateBatchByDoctorId(@Param("worktime") Worktime worktime, @Param("list") List<Integer> idList);

    List<WorkTimeVo> searchWorkTime(WorkTimeQuery query);

    Worktime getByDoctorId(Integer doctor_id);
}