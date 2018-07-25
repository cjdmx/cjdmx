package com.ujiuye.hospital.controller;

import com.ujiuye.hospital.bean.Bespeaklog;
import com.ujiuye.hospital.bean.Worktime;
import com.ujiuye.hospital.service.WorkTimeService;
import com.ujiuye.hospital.vo.BespeakQuery;
import com.ujiuye.hospital.vo.LogVo;
import com.ujiuye.hospital.vo.WorkTimeQuery;
import com.ujiuye.hospital.vo.WorkTimeVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/workTime")
public class WorkTimeController {
    @Resource
    WorkTimeService service;

    //查询谁在工作
    @RequestMapping("searchWorkTime")
    @ResponseBody
    public List<WorkTimeVo> SearchWorkTime(WorkTimeQuery query){
        List<WorkTimeVo> worktimes = service.searchWorkTime(query);
        return worktimes;
    }

    //更新工作表
    @RequestMapping("/updateWorkTime")
    public String arrangeWork(Worktime workTime, String weeks, String ids){
        if(service.updateWorkTime(workTime,ids,weeks)>0){
            return "main";
        }
        return "fail";
    }

    //设置最大预约人数
    @RequestMapping("/UpdateMax")
    public String UpdateMax(Integer doctor_id,Integer number){
        service.updateMax(doctor_id,number);
        return "main";
    }

    //从查看工作表跳转到预约界面
    @RequestMapping("/goBespeak")
    public String goBespeak(Integer id, HttpServletRequest request){
        WorkTimeVo worktime = service.getWorkTimeById(id);
        request.setAttribute("worktime",worktime);
        return "/patient/bespeakDoctorCommit";
    }

    @RequestMapping("/doBespeak")
    public void doBespeak(Bespeaklog log,HttpServletResponse response) throws IOException {
        PrintWriter writer = response.getWriter();
        writer.write(service.doBespeak(log));
        writer.flush();
        writer.close();
    }

    @RequestMapping("getLogByPatientId")
    @ResponseBody
    public List<LogVo> getLogByPatientId(Integer patient_id){
        return service.getLogByPatientId(patient_id);
    }

    @RequestMapping("doCancleBespeak")
    public String doCancleBespeak(Bespeaklog log){
        service.doCancleBespeak(log);
        return "redirect:/patient/cancleBaspeak.jsp";
    }
}
