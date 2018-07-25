package com.ujiuye.hospital.controller;

import com.ujiuye.hospital.bean.Patientregister;
import com.ujiuye.hospital.service.UserService;
import com.ujiuye.hospital.vo.User;
import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UserConntroller {

    @Resource
    UserService service;

    /*登陆*/
    @RequestMapping("/login")
    public String login(User user, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
        User newuser = service.login(user);
        if(newuser!=null){
            session.setAttribute("user",user);
            response.sendRedirect(request.getContextPath()+"/"+user.getPath()+".jsp");
        }
        request.setAttribute("answer","您的账号或密码错误！请重新输入");
        request.setAttribute("username",user.getUsername());
        return "main";
    }

    /*修改密码*/
    @RequestMapping("changePassword")
    public String changePassword(String oldpassword,String newpassword,HttpSession session){
        User user = (User) session.getAttribute("user");
        if (user.getPassword().equals(oldpassword)){
            service.changePassword(user,newpassword);
            return "main";
        }
        return "fail";
    }

    /*下载附件*/
    @RequestMapping("/download")
    public ResponseEntity<byte[]> download(String filepath) throws IOException {
        File file = new File(filepath);
        HttpHeaders headers = new HttpHeaders();
        //获取文件名
        String fileName = filepath.substring(filepath.lastIndexOf("/")+1);
        //设置消息头
        headers.setContentDispositionFormData("attachment",fileName);
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        ResponseEntity entity = new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),headers,HttpStatus.CREATED);
        return entity;
    }

    /*患者注册*/
    @RequestMapping("/patientRegister")
    public String patientRegister(Patientregister patientRegister){
        if(service.savePatient(patientRegister)>0) {return "redirect:/login.jsp";}
        else return "fail";
    }
}
