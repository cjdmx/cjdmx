package com.ujiuye.hospital.service;

import com.ujiuye.hospital.bean.Doctor;
import com.ujiuye.hospital.bean.Formwork;
import com.ujiuye.hospital.vo.DoctorQuery;
import com.ujiuye.hospital.vo.DoctorVo;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface DoctorService {

    int saveDoctor(Doctor doctor);

    List<Doctor> getAllDoctor();

    int updateDoctor(Doctor doctor);

    List<DoctorVo> searchDoctor(DoctorQuery doctor);

    Doctor getById(Integer doctor_id);

    int deleteDoctor(Integer doctor_id);

    int saveFormWork(Formwork formwork, MultipartFile file);

    List<Formwork> searchFormWork(Formwork formwork);

    List<DoctorVo> getDoctorByDeptId(Integer dept_id);

    DoctorVo getVoById(Integer doctor_id);
}
