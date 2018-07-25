package com.ujiuye.hospital.controller;

import com.ujiuye.hospital.bean.Doctorworklog;
import com.ujiuye.hospital.service.WorkLogService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/worklog")
public class WorklogController {
    @Resource
    WorkLogService service;

    /*新建工作计划并上传附件*/
    @RequestMapping("/saveWorklog")
    public String saveWorklog(Doctorworklog worklog, MultipartFile file){
        if(service.saveWorklog(worklog,file)==0){
            return "fail";
        }
        return "main";
    }

    /*模糊查询工作日志*/
    @RequestMapping("/searchWorklog")
    @ResponseBody
    public List<Doctorworklog> searchWorklog(Doctorworklog doctorworklog){
        return service.searchWorklog(doctorworklog);
    }

    /*跳转到更新日志页面*/
    @RequestMapping("/goUpdateWorklog")
    public String goUpdateWorklog(Integer id, HttpServletRequest request){
        /*通过ID获取数据，传到更新页面*/
        Doctorworklog worklog = service.getWorklogById(id);
        request.setAttribute("worklog",worklog);
        return "doctors/updateWorkLog";
    }

    /*删除日志*/
    @RequestMapping("/deleteWorklog")
    @ResponseBody
    public boolean deleteWorklog(Integer id){
        if(service.deleteById(id)>0){
            return true;
        }
        return false;
    }
}
