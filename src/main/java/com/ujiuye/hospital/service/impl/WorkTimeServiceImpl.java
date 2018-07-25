package com.ujiuye.hospital.service.impl;

import com.ujiuye.hospital.bean.Bespeaklog;
import com.ujiuye.hospital.bean.Bespeakstate;
import com.ujiuye.hospital.bean.Worktime;
import com.ujiuye.hospital.dao.BespeaklogMapper;
import com.ujiuye.hospital.dao.BespeakmaxamountMapper;
import com.ujiuye.hospital.dao.BespeakstateMapper;
import com.ujiuye.hospital.dao.WorktimeMapper;
import com.ujiuye.hospital.service.WorkTimeService;
import com.ujiuye.hospital.util.WeekUtil;
import com.ujiuye.hospital.vo.LogVo;
import com.ujiuye.hospital.vo.WorkTimeQuery;
import com.ujiuye.hospital.vo.WorkTimeVo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class WorkTimeServiceImpl implements WorkTimeService {

    @Resource
    private WorktimeMapper worktimeMapper;
    @Resource
    private BespeakmaxamountMapper maxamountMapper;
    @Resource
    private BespeaklogMapper logMapper;
    @Resource
    private BespeakstateMapper stateMapper;

    /*更新工作时间*/
    @Override
    public int updateWorkTime(Worktime worktime,String ids, String weeks) {
        /*为了让mybatis识别，所以把ID放到list集合*/
        List<Integer> idList = new ArrayList();
        for (String id:ids.split(",")){
            idList.add(Integer.parseInt(id));
        }
        //在工具类中包装了方法，用来通过提供的字符串设置所有星期的工作状态
        WeekUtil.initWorkTime(worktime,weeks);
        return worktimeMapper.updateBatchByDoctorId(worktime,idList);
    }

    /*查找工作时间表*/
    @Override
    public List<WorkTimeVo> searchWorkTime(WorkTimeQuery query) {
        List<WorkTimeVo> workTimes = worktimeMapper.searchWorkTime(query);
        /*取出数据了，但是还不够，
        因为每个星期的工作状态是用1和0表示的，要转换为是和否
        所以我使用的工具类*/
        for (WorkTimeVo workTime:workTimes){
            WeekUtil.weekChanger(workTime);
        }
        return workTimes;
    }

    /*设置预约人数上限*/
    @Override
    public int updateMax(Integer doctor_id, Integer number) {
        return maxamountMapper.updateMax(doctor_id,number);
    }

    /*通过ID查找工作时间*/
    @Override
    public WorkTimeVo getWorkTimeById(Integer id) {
        WorkTimeVo vo = worktimeMapper.selectByPrimaryKey(id);
        vo.setWeekMap(WeekUtil.getWeekMap(vo));
        return vo;
    }

    /*患者添加预约*/
    @Override
    public String doBespeak(Bespeaklog log) {
        //先判断突发状况
        Integer doctor_id = log.getDoctor_id();
        if(logMapper.checkRepeat(log)>0){
            return "您已定过与该医生的预约";
        }
        if(maxamountMapper.addCount(doctor_id)==0){
            return "对不起，该医生预约已满";//添加预约上限表的人数，顺便重新检查是否满人
        }

        Bespeakstate state = stateMapper.selectByDoctorId(doctor_id);
        WeekUtil.weekAdder(state,log.getBespeak_date());//使用工具类通过字符串添加指定星期的人数

        //往预约状态表和预约日志表添加数据
        logMapper.insertSelective(log);
        stateMapper.updateByPrimaryKeySelective(state);
        return "预约成功";
    }

    @Override
    public List<LogVo> getLogByPatientId(Integer patient_id) {
        List<LogVo> vos = logMapper.getLogByPatientId(patient_id);
        for(LogVo vo:vos){
            vo.setWeekName(WeekUtil.getWeekName(vo.getBespeak_date()));
        }
        return vos;
    }

    /*
    取消预约要完成三件事
    1、取消预约日志。
    2、预约状态对应日期预约人数-1
    3、预约上限表bespeak_amount-1
    * */
    @Override
    public void doCancleBespeak(Bespeaklog log) {
        maxamountMapper.subtract(log.getDoctor_id());
        stateMapper.subtract(log.getBespeak_date()+"_state",log.getDoctor_id());
        logMapper.delete(log);
    }
}
