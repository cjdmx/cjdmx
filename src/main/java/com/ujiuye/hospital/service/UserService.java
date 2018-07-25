package com.ujiuye.hospital.service;

import com.ujiuye.hospital.bean.Administrator;
import com.ujiuye.hospital.bean.Doctor;
import com.ujiuye.hospital.bean.Patientregister;
import com.ujiuye.hospital.vo.User;

public interface UserService {
    User login(User user);

    int changePassword(User user,String newpassword);

    int savePatient(Patientregister patientRegister);
}
