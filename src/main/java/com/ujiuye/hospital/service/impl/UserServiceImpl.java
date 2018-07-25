package com.ujiuye.hospital.service.impl;

import com.ujiuye.hospital.bean.Administrator;
import com.ujiuye.hospital.bean.Doctor;
import com.ujiuye.hospital.bean.Patientregister;
import com.ujiuye.hospital.dao.AdministratorMapper;
import com.ujiuye.hospital.dao.DoctorMapper;
import com.ujiuye.hospital.dao.PatientregisterMapper;
import com.ujiuye.hospital.service.UserService;
import com.ujiuye.hospital.vo.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    AdministratorMapper adminMapper;
    @Resource
    PatientregisterMapper patientMapper;
    @Resource
    DoctorMapper doctorMapper;

    @Override
    public User login(User user) {
        switch (user.getRole_id()){
            case 1:{
                Patientregister object = patientMapper.login(user.getUsername(), user.getPassword());
                if (object!=null){
                    user.setPatient(object);
                    user.setPath("patientIndex");
                    return user;
                }
                break;
            }
            case 2:{
                Doctor object = doctorMapper.login(user.getUsername(), user.getPassword());
                if (object!=null){
                        user.setDoctor(object);
                        user.setPath("doctorIndex");
                        return user;
                    }
                break;
            }
            case 3:{
                Administrator object = adminMapper.login(user.getUsername(), user.getPassword());
                if (object!=null){
                    user.setAdmin(object);
                    user.setPath("adminIndex");
                    return user;
                }
            }
        }
        return null;
    }

    @Override
    public int changePassword(User user,String newpassword) {
        switch (user.getRole_id()){
            case 1:{
                Patientregister patient = user.getPatient();
                patient.setPassword(newpassword);
                patientMapper.updateByPrimaryKeySelective(patient);
                break;
            }
            case 2:{
                Doctor doctor = user.getDoctor();
                doctor.setPassword(newpassword);
                doctorMapper.updateByPrimaryKeySelective(doctor);
                break;
            }
            case 3:{
                Administrator admin = user.getAdmin();
                admin.setPassword(newpassword);
                return adminMapper.updateByPrimaryKeySelective(admin);
            }
        }
        return 0;
    }

    @Override
    public int savePatient(Patientregister patientRegister) {
        return patientMapper.insertSelective(patientRegister);
    }
}
