package com.ujiuye.hospital.service;

import com.ujiuye.hospital.bean.Doctorwordplan;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface WorkplanService {
    public int saveWorkplan(Doctorwordplan doctorwordplan, MultipartFile file);

    List<Doctorwordplan> searchWorkPlan(Doctorwordplan doctorwordplan);

    int deleteWorkplanById(Integer dwp_id);

    Doctorwordplan getWorkplanById(Integer dwp_id);
}
