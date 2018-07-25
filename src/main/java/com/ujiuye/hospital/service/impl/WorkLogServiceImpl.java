package com.ujiuye.hospital.service.impl;

import com.ujiuye.hospital.bean.Doctorworklog;
import com.ujiuye.hospital.dao.DoctorworklogMapper;
import com.ujiuye.hospital.service.WorkLogService;
import com.ujiuye.hospital.util.UploadUtil;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Service
public class WorkLogServiceImpl implements WorkLogService {
    @Resource
    DoctorworklogMapper worklogMapper;


    /*插入+更新，附带上传*/
    public int saveWorklog(Doctorworklog worklog, MultipartFile file){

        String path = "D:/temp/hospital/doctorworklog/";
        String filename = file.getOriginalFilename();
        /*使用工具上传*/
        boolean flag = UploadUtil.upload(file,path);

        /*上传成功则把文件信息提交到数据库*/
        if (flag){
            worklog.setAccessorytitle(filename);
            worklog.setAccessoriness(path+filename);
        }

        /*先判断id为不为空，不空则为更新，空则为插入*/
        if( worklog.getId()==null){
            if(worklog.getTime()==null){
                worklog.setTime(new Date());
            }
            return worklogMapper.insert(worklog);
        }

        /*对更新的处理*/
        else {
            Doctorworklog old = worklogMapper.selectByPrimaryKey(worklog.getId());
            /*如果没做添加动作，则保持原样*/
            if(worklog.getTime()==null){
                worklog.setTime(old.getTime());
            }
            if(worklog.getAccessoriness()==null) {
                worklog.setAccessoriness(old.getAccessoriness());
                worklog.setAccessorytitle(old.getAccessorytitle());
            }

            /*如果刚刚添加了文件，那就要删除原文件*/
            if(flag&old.getAccessoriness()!=null){
                new File(old.getAccessoriness()).delete();
            }
            return worklogMapper.updateByPrimaryKeySelective(worklog);
        }
    }

    @Override
    public List<Doctorworklog> searchWorklog(Doctorworklog doctorworklog) {
        return worklogMapper.searchWorklog(doctorworklog);
    }

    @Override
    public Doctorworklog getWorklogById(Integer id) {
        return worklogMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteById(Integer id) {
        return worklogMapper.deleteByPrimaryKey(id);
    }
}
