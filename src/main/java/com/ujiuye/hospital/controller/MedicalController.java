package com.ujiuye.hospital.controller;

import com.ujiuye.hospital.bean.Medicalhistory;
import com.ujiuye.hospital.service.MedicalService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller("medicalController")
@RequestMapping("/medical")
public class MedicalController {
    @Resource
    MedicalService service;

    /*保存病历*/
    @RequestMapping("/saveMedical")
    public String saveMedical(Medicalhistory medicalhistory){
        if(service.saveMedical(medicalhistory)==0){
            return "fail";
        }
        return "main";
    }

    //前往查看病历详情doctors/medicalhistorymess
    @RequestMapping("goMess")
    public String goMess(Integer id, Model model){
        model.addAttribute("medical",service.selectByPatientId(id));
        return "doctors/medicalhistorymess";
    }

    //展示页面跳转
    @RequestMapping("/goUpdateMedical")
    public String goUpdateMedical(Integer patient_id, HttpServletRequest request){
        request.setAttribute("medical",service.selectByPatientId(patient_id));
        return "doctors/updatePaint";
    }

    //更改病情描述
    @RequestMapping("/updateDirctions")
    public String updateDirctions(Medicalhistory medicalhistory){
        if(service.updateMedical(medicalhistory)==0){
            return "fail";
        }
        return "main";
    }
}
