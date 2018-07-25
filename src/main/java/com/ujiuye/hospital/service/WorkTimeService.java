package com.ujiuye.hospital.service;

import com.ujiuye.hospital.bean.Bespeaklog;
import com.ujiuye.hospital.bean.Worktime;
import com.ujiuye.hospital.vo.LogVo;
import com.ujiuye.hospital.vo.WorkTimeQuery;
import com.ujiuye.hospital.vo.WorkTimeVo;

import java.util.List;

public interface WorkTimeService {

    int updateWorkTime(Worktime worktime,String ids, String weeks);

    List<WorkTimeVo> searchWorkTime(WorkTimeQuery query);

    int updateMax(Integer doctor_id, Integer number);

    WorkTimeVo getWorkTimeById(Integer id);

    String doBespeak(Bespeaklog log);

    List<LogVo> getLogByPatientId(Integer patient_id);

    void doCancleBespeak(Bespeaklog log);
}
