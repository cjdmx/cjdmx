package com.ujiuye.hospital.controller;

import com.ujiuye.hospital.bean.Doctor;
import com.ujiuye.hospital.bean.Formwork;
import com.ujiuye.hospital.service.DoctorService;
import com.ujiuye.hospital.vo.DoctorQuery;
import com.ujiuye.hospital.vo.DoctorVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/doctor")
public class DoctorController {

    @Resource
    DoctorService service;

    /*注册医生*/
    @RequestMapping("/saveDoctor")
    public String saveDoctor(Doctor doctor, HttpServletResponse response) throws IOException {
        if(service.saveDoctor(doctor)>0){
            response.sendRedirect("/main.jsp");
        }
        return "admin/doctorA";
    }

    /*跳转到查看医生详情*/
    @RequestMapping("goMess")
    public String goMess(Integer doctor_id, Model model){
        DoctorVo vo = service.getVoById(doctor_id);
        model.addAttribute("doctor",vo);
        return "admin/doctorMess";
    }

    /*跳转到更新页面*/
    @RequestMapping("/updateReturn")
    public String updateReturn(Integer doctor_id,HttpServletRequest request){
        request.setAttribute("old",service.getById(doctor_id));
        return "admin/doctorU";
    }

    /*更新医生*/
    @RequestMapping("/updateDoctor")
    public String updateDoctor(Doctor doctor,HttpServletRequest request,HttpServletResponse response) throws IOException {
        if(service.updateDoctor(doctor)>0){
            response.sendRedirect(request.getContextPath()+"/main.jsp");
        }
        request.setAttribute("old",doctor);
        return "admin/doctorU";
    }

    /*删除医生*/
    @RequestMapping("/deleteDoctor")
    public String deleteDoctor(Integer doctor_id){
        System.out.println(doctor_id);
        service.deleteDoctor(doctor_id);
        return "admin/doctorE";
    }

    /*多条件查找医生*/
    @RequestMapping("/searchDoctor")
    public String searchDoctor(DoctorQuery doctor,String ageScope,HttpServletRequest request){
        if (ageScope!=null&&ageScope.length()>0){
            String[] split = ageScope.split("-");
            doctor.setMinAge(Integer.parseInt(split[0]));
            doctor.setMaxAge(Integer.parseInt(split[1]));
        }
        request.setAttribute("table",service.searchDoctor(doctor));
        return "admin/doctorE";
    }

    /*ajax多条件查找医生*/
    @RequestMapping("/searchDoctorAjax")
    @ResponseBody
    public List<DoctorVo> searchDoctorAjax(DoctorQuery query){
        List<DoctorVo> list = service.searchDoctor(query);
        return list;
    }

    /*查找某科室的所有医生*/
    @RequestMapping("getDoctorByDeptId")
    @ResponseBody
    public List<DoctorVo> getDoctorByDeptId(Integer dept_id){
        return service.getDoctorByDeptId(dept_id);
    }

    /*病人查找医生*/
    @RequestMapping("searchDoctor2")
    @ResponseBody
    public List<DoctorVo> searchDoctor2(DoctorQuery doctor){
        return service.searchDoctor(doctor);
    }

    /*上传模板*/
    @RequestMapping("/saveFormWork")
    public String saveFormWork(Formwork formwork, MultipartFile file){
        if(service.saveFormWork(formwork,file)==0){
            return "fail";
        }
        return "main";
    }

    /*下载模板*/
    @RequestMapping("/searchFormWork")
    @ResponseBody
    public List<Formwork> searchFormWork(Formwork formwork){
        return service.searchFormWork(formwork);
    }
}
