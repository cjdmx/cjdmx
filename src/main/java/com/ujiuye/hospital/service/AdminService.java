package com.ujiuye.hospital.service;


import com.ujiuye.hospital.bean.Deparment;
import com.ujiuye.hospital.bean.Positiontitle;
import com.ujiuye.hospital.bean.Resume;
import com.ujiuye.hospital.bean.Role;

import java.util.List;

public interface AdminService {

    int saveResume(Resume resume);

    int savePosition(Positiontitle position);

    List<Role> getAllRole();

    int updateResume(Resume resume);

    Resume getResumeById(int id);

    List<Resume> getAllResume();

    List<Positiontitle> getAllPosition();

    List<Deparment> getAllDepartment();

    Positiontitle getPositionByname(String position_name);

    int updatePosition(Positiontitle positiontitle);

    Resume getResumeByname(String resume_name);

    int deletePositionById(Integer position_id);

    int deleteResumeById(Integer resume_id);
}
