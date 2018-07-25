package com.ujiuye.hospital.service.impl;

import com.ujiuye.hospital.bean.Bespeakmaxamount;
import com.ujiuye.hospital.bean.Doctor;
import com.ujiuye.hospital.bean.Formwork;
import com.ujiuye.hospital.bean.Worktime;
import com.ujiuye.hospital.dao.BespeakmaxamountMapper;
import com.ujiuye.hospital.dao.DoctorMapper;
import com.ujiuye.hospital.dao.FormworkMapper;
import com.ujiuye.hospital.dao.WorktimeMapper;
import com.ujiuye.hospital.service.DoctorService;
import com.ujiuye.hospital.util.UploadUtil;
import com.ujiuye.hospital.vo.DoctorQuery;
import com.ujiuye.hospital.vo.DoctorVo;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class DoctorServiceImpl implements DoctorService {

    @Resource
    DoctorMapper doctorMapper;
    @Resource
    FormworkMapper formworkMapper;
    @Resource
    WorktimeMapper worktimeMapper;
    @Resource
    BespeakmaxamountMapper bespeakmaxamountMapper;


    /*注册医生的同时给医生分配工作时间和预约人数上限*/
    @Override
    public int saveDoctor(Doctor doctor) {
        Integer id = doctorMapper.insertSelective(doctor);
        /*给两个关联对象赋值*/
        Worktime worktime = new Worktime();
        worktime.setDoctor_id(id);
        worktime.setCreated_date(new Date());
        Bespeakmaxamount bespeakmaxamount = new Bespeakmaxamount();
        bespeakmaxamount.setDept_id(id);
        bespeakmaxamount.setDoctor_id(id);
        bespeakmaxamount.setCreated_date(new Date());

        /*三张表一起创建数据*/
        worktimeMapper.insertSelective(worktime);
        bespeakmaxamountMapper.insertSelective(bespeakmaxamount);
        return id;
    }

    @Override
    public List<Doctor> getAllDoctor() {
        return doctorMapper.getAllDoctor();
    }

    @Override
    public int updateDoctor(Doctor doctor) {
        return doctorMapper.updateByPrimaryKeySelective(doctor);
    }

    @Override
    public List<DoctorVo> searchDoctor(DoctorQuery doctor) {
        return doctorMapper.searchDoctor(doctor);
    }

    @Override
    public Doctor getById(Integer doctor_id) {
        return doctorMapper.selectByPrimaryKey(doctor_id);
    }

    @Override
    public int deleteDoctor(Integer doctor_id) {
        return doctorMapper.deleteByPrimaryKey(doctor_id);
    }

    @Override
    public int saveFormWork(Formwork formwork, MultipartFile file) {
        String filename = file.getOriginalFilename();
        String path = "D:/temp/hospital/formwork/";

        UploadUtil.upload(file,path);
        formwork.setTemplate(path+filename);
        formwork.setCreate_date(new Date());

        return formworkMapper.insertSelective(formwork);
    }

    @Override
    public List<Formwork> searchFormWork(Formwork formwork) {
        return formworkMapper.searchFormWork(formwork);
    }

    @Override
    public List<DoctorVo> getDoctorByDeptId(Integer dept_id) {
        return doctorMapper.getDoctorByDeptId(dept_id);
    }

    @Override
    public DoctorVo getVoById(Integer doctor_id) {
        return doctorMapper.getVoById(doctor_id);
    }


}
