package com.ujiuye.hospital.controller;

import com.ujiuye.hospital.bean.*;
import com.ujiuye.hospital.service.AdminService;
import com.ujiuye.hospital.vo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminConroller {

    @Resource
    AdminService service;


    //查询所有资历
    @RequestMapping("/getAllResume")
    @ResponseBody
    public List<Resume> getAllResume(){
        return service.getAllResume();
    }

    //修改资历
    @RequestMapping("/updateResume")
    public String updateResume(Resume resume){
        if(service.updateResume(resume)>0){
            return "main";
        }
        return "admin/supportU1";
    }

    //删除职称
    @RequestMapping("/deleteResumeById")
    public String deleteResumeById(Integer resume_id){
        if(service.deleteResumeById(resume_id)>0){
            return "main";
        }
        return "fail";
    }

    //通过资历名查找资历
    @RequestMapping("/getResumeByName")
    @ResponseBody
    public Resume getResumeByName(String resume_name){
        return service.getResumeByname(resume_name);
    }

    //跳转到资历更新页面
    @RequestMapping("/resumeReturn")
    public String resumeReturn(Resume resume, HttpServletRequest request){
        request.setAttribute("position",resume);
        return "admin/supportU1";
    }


    //查询所有职称
    @RequestMapping("/getAllPosition")
    @ResponseBody
    public List<Positiontitle> getAllPosition(){
        return service.getAllPosition();
    }

    //通过职称名查找职称
    @RequestMapping("/getPositionByName")
    @ResponseBody
    public Positiontitle getPositionByName(String position_name){
        System.out.println(position_name);
        return service.getPositionByname(position_name);
    }

    //跳转到职称更新页面
    @RequestMapping("/positionReturn")
    public String positionReturn(Positiontitle positiontitle, HttpServletRequest request){
        request.setAttribute("position",positiontitle);
        return "admin/supportU";
    }

    //删除职称
    @RequestMapping("/deletePositionById")
    public String deletePositionById(Integer position_id){
        if(service.deletePositionById(position_id)>0){
            return "main";
        }
        return "fail";
    }

    //更新职称
    @RequestMapping("/updatePosition")
    public String updatePosition(Positiontitle positiontitle){
        if(service.updatePosition(positiontitle)>0){
            return "main";
        }
        return "admin/supportU";
    }

    //展示所有权限
    @RequestMapping("/getAllRole")
    @ResponseBody
    public List<Role> getAllRole(){
        return service.getAllRole();
    }

    //展示所有科室
    @RequestMapping("/getAllDepartment")
    @ResponseBody
    public List<Deparment> getAllDepartment(){
        return service.getAllDepartment();
    }

}
