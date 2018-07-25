package com.ujiuye.hospital.controller;

import com.ujiuye.hospital.bean.Doctorreplymessage;
import com.ujiuye.hospital.bean.Leavemessage;
import com.ujiuye.hospital.service.LeavemassageService;
import com.ujiuye.hospital.vo.DoctorQuery;
import com.ujiuye.hospital.vo.LeavemessageVo;
import com.ujiuye.hospital.vo.ReplyVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.management.Query;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

/*管理患者留言和医生回复*/
@Controller
@RequestMapping("leavemsg")
public class LeavemassageController {
    @Resource
    LeavemassageService service;

    /*患者给医生留言*/
    @RequestMapping("save")
    public String save(Leavemessage leavemessage){
        service.save(leavemessage);
        return "main";
    }

    /*医生前往患者留言详情页面*/
    @RequestMapping("gopatientmsg")
    public String gopatientmsg(Integer id,Model model){
        model.addAttribute("leavemsg",service.getLeavemsgById(id));
        return "doctors/patientmsg";
    }

    /*患者查询医生留言*/
    @RequestMapping("getReplyByPatientId")
    @ResponseBody
    public List<ReplyVo> getReplyByPatientId(Integer patient_id){
        return service.getReplyByPatientId(patient_id);
    }

    /*标记为已读或未读*/
    @RequestMapping("updateRead")
    public String updateRead(Doctorreplymessage read){
        service.updataRead(read);
        return "/patient/writeBackMessage";
    }

    /*删除医生回复*/
    @RequestMapping("deleteReply")
    public String deleteReply(Integer id){
        service.deleteReply(id);
        return "/patient/writeBackMessage";
    }

    /*医生查询患者留言*/
    @RequestMapping("searchLeavemsg")
    @ResponseBody
    public List<LeavemessageVo> searchLeavemsg(DoctorQuery query,String ageScope){
        if(ageScope!=null){
            String[] split = ageScope.split("-");
            query.setMinAge(Integer.parseInt(split[0]));
            query.setMaxAge(Integer.parseInt(split[1]));
        }
        return service.searchLeavemsg(query);
    }

    /*通过请求方式判断映射，是get请求则跳转页面，是post请求则提交数据库*/
    @GetMapping("replymsg")//跳转到医生回复病人页面
    public String goreplymsg(Integer patient_id, Model model){
        model.addAttribute("patient_id",patient_id);
        return "/doctors/replymsg";
    }

    @PostMapping("replymsg")//医生回复病人
    public String savereplymsg(Doctorreplymessage replymsg){
        if(service.saveReply(replymsg)>0){
            return "/doctors/patientmsgE";
        }
        return "fail";
    }
}
