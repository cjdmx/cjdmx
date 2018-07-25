package com.ujiuye.hospital.dao;

import com.ujiuye.hospital.bean.Resume;

import java.util.List;

public interface ResumeMapper {
    int deleteByPrimaryKey(Integer resume_id);

    int insert(Resume record);

    int insertSelective(Resume record);

    Resume selectByPrimaryKey(Integer resume_id);

    int updateByPrimaryKeySelective(Resume record);

    int updateByPrimaryKey(Resume record);

    List<Resume> getAllResume();

    Resume getByName(String resume_name);
}