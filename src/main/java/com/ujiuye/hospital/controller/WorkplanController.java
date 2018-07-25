package com.ujiuye.hospital.controller;

import com.ujiuye.hospital.bean.Doctorwordplan;
import com.ujiuye.hospital.service.WorkplanService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("workplan")
public class WorkplanController {
    @Resource
    WorkplanService service;

    @RequestMapping("saveWorkplan")
    public String saveWorkplan(Doctorwordplan doctorwordplan, MultipartFile file){
        if(service.saveWorkplan(doctorwordplan,file)==0){
            return "fail";
        }
        return "main";
    }

    @RequestMapping("searchWorkplan")
    @ResponseBody
    public List<Doctorwordplan> searchWorkplan(Doctorwordplan doctorwordplan){
        return service.searchWorkPlan(doctorwordplan);
    }

    /*删除计划*/
    @RequestMapping("/deleteWorkplan")
    @ResponseBody
    public boolean deleteWorkplan(Integer dwp_id){
        if (service.deleteWorkplanById(dwp_id)>0){
            return true;
        }
        return false;
    }

    /*跳转到更新页面*/
    @RequestMapping("/goUpdateWrokplan")
    public String goUpdateWrokplan(Integer dwp_id, HttpServletRequest request){
        Doctorwordplan doctorwordplan = service.getWorkplanById(dwp_id);
        request.setAttribute("workplan",doctorwordplan);
        return "doctors/workPlan";
    }

}
