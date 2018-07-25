package com.ujiuye.hospital.service;

import com.ujiuye.hospital.bean.Doctorworklog;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface WorkLogService {
    int saveWorklog(Doctorworklog worklog, MultipartFile file);

    List<Doctorworklog> searchWorklog(Doctorworklog doctorworklog);

    Doctorworklog getWorklogById(Integer id);

    int deleteById(Integer id);
}
