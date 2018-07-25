package com.ujiuye.hospital.vo;

import com.ujiuye.hospital.bean.Worktime;

import java.io.Serializable;

public class WorkTimeQuery extends Worktime implements Serializable {
    private Integer dept_id;

    public Integer getDept_id() {
        return dept_id;
    }

    public void setDept_id(Integer dept_id) {
        this.dept_id = dept_id;
    }
}
