package com.ujiuye.hospital.dao;


import com.ujiuye.hospital.bean.Role;

import java.util.List;

public interface RoleMapper {
    List<Role> getAll();

    Role getById();
}