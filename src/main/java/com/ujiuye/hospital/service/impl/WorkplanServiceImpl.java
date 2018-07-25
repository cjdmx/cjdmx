package com.ujiuye.hospital.service.impl;

import com.ujiuye.hospital.bean.Doctorwordplan;
import com.ujiuye.hospital.dao.DoctorwordplanMapper;
import com.ujiuye.hospital.service.WorkplanService;
import com.ujiuye.hospital.util.UploadUtil;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.util.List;

@Service
public class WorkplanServiceImpl implements WorkplanService {
    @Resource
    DoctorwordplanMapper workplanMapper;

    /*插入与更新*/
    @Override
    public int saveWorkplan(Doctorwordplan doctorwordplan, MultipartFile file) {

        String path = "D:/temp/hospital/plan/";
        String filename = file.getOriginalFilename();
        /*通过工具上传文件，返回执行结果*/
        boolean flag = UploadUtil.upload(file,path);

        /*上传成功则把文件信息提交到数据库*/
        if(flag){
            doctorwordplan.setAccesssorytitle(filename);
            doctorwordplan.setAccessoriness(path+filename);
        }

        /*通过id判断是更新还是插入*/
        if(doctorwordplan.getDwp_id()==null){
            return workplanMapper.insertSelective(doctorwordplan);
        }else {
            /*删除原附件*/
            Doctorwordplan old = workplanMapper.selectByPrimaryKey(doctorwordplan.getDwp_id());
            if (flag&old.getAccessoriness()!=null){
                new File(old.getAccessoriness()).delete();
            }
            return workplanMapper.updateByPrimaryKeySelective(doctorwordplan);
        }
    }

    /*条件查询工作计划*/
    @Override
    public List<Doctorwordplan> searchWorkPlan(Doctorwordplan doctorwordplan) {
        return workplanMapper.searchWorkPlan(doctorwordplan);
    }

    /*通过ID删除*/
    @Override
    public int deleteWorkplanById(Integer dwp_id) {
        return workplanMapper.deleteByPrimaryKey(dwp_id);
    }

    @Override
    public Doctorwordplan getWorkplanById(Integer dwp_id) {
        return workplanMapper.selectByPrimaryKey(dwp_id);
    }
}
