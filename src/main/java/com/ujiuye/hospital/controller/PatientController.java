package com.ujiuye.hospital.controller;

import com.ujiuye.hospital.bean.Patientregister;
import com.ujiuye.hospital.service.PatientService;
import com.ujiuye.hospital.vo.PatientQuery;
import com.ujiuye.hospital.vo.PatientVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/patient")
public class PatientController {
    @Resource
    PatientService service;

    // 病人注册
    @RequestMapping("/register")
    public String register(Patientregister patientregister){
        return "success";
    }

    //获得所有病人信息
    @RequestMapping("/getAllPatient")
    @ResponseBody
    public List<Patientregister> getAll(){
        return service.getAllPatient();
    }

    //获得尚未创建病例的病人信息
    @RequestMapping("/getAllNoMedical")
    @ResponseBody
    public List<Patientregister> getAllNoMedical(){
        return service.getAllNoMedical();
    }

    /*通过ID查询病人*/
    @RequestMapping("/getPatientById")
    @ResponseBody
    public Patientregister getPatientById(Integer patient_id){
        return service.getPatientById(patient_id);
    }

    /*通过条件查询病人*/
    @RequestMapping("/search/{what}")
    @ResponseBody
    public List<PatientVo> searchMedical( @PathVariable("what")String what,PatientQuery query, String ageScope){
        if(ageScope!=null){
            String[] scope = ageScope.split("-");
            query.setMinAge(Integer.parseInt(scope[0]));
            query.setMaxAge(Integer.parseInt(scope[1]));
        }
        List<PatientVo> patients = service.search(query);
        switch (what){
            case "medical":{
                for (PatientVo patient:patients){
                    if (patient.getMedicalhistory()==null){
                        patients.remove(patient);
                    }
                }
                break;
            }
            case "reply":{
                for (PatientVo patient:patients){
                    if (patient.getReply()==null){
                        patients.remove(patient);
                    }
                }
                break;
            }
        }
        return patients;
    }
}
