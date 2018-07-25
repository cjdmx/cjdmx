package com.ujiuye.hospital.service.impl;

import com.ujiuye.hospital.bean.Deparment;
import com.ujiuye.hospital.bean.Positiontitle;
import com.ujiuye.hospital.bean.Resume;
import com.ujiuye.hospital.bean.Role;
import com.ujiuye.hospital.dao.DeparmentMapper;
import com.ujiuye.hospital.dao.PositiontitleMapper;
import com.ujiuye.hospital.dao.ResumeMapper;
import com.ujiuye.hospital.dao.RoleMapper;
import com.ujiuye.hospital.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Resource
    ResumeMapper resumeMapper;
    @Resource
    PositiontitleMapper positionMapper;
    @Resource
    RoleMapper roleMapper;
    @Resource
    DeparmentMapper deparmentMapper;

    @Override
    public int saveResume(Resume resume) {
        return resumeMapper.insertSelective(resume);
    }

    @Override
    public int savePosition(Positiontitle position) {
        return positionMapper.insertSelective(position);
    }

    @Override
    public List<Role> getAllRole() {
        return roleMapper.getAll();
    }

    @Override
    public int updateResume(Resume resume) {
        return resumeMapper.updateByPrimaryKeySelective(resume);
    }

    @Override
    public Resume getResumeById(int id) {
        return resumeMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Resume> getAllResume() {
        return resumeMapper.getAllResume();
    }

    @Override
    public List<Positiontitle> getAllPosition() {
        return positionMapper.getAllPosition();
    }

    @Override
    public List<Deparment> getAllDepartment() {
        return deparmentMapper.getAllDepartment();
    }

    @Override
    public Positiontitle getPositionByname(String position_name) {
        return positionMapper.getByName(position_name);
    }

    @Override
    public int updatePosition(Positiontitle positiontitle) {
        return positionMapper.updateByPrimaryKeySelective(positiontitle);
    }

    @Override
    public Resume getResumeByname(String resume_name) {
        return resumeMapper.getByName(resume_name);
    }

    @Override
    public int deletePositionById(Integer position_id) {
        return positionMapper.deleteByPrimaryKey(position_id);
    }

    @Override
    public int deleteResumeById(Integer resume_id) {
        return resumeMapper.deleteByPrimaryKey(resume_id);
    }

}
