package com.ujiuye.hospital.vo;

import com.ujiuye.hospital.bean.*;

import java.io.Serializable;


public class DoctorVo extends Doctor implements Serializable {

    private Role role;
    private Deparment deparment;
    private Positiontitle positiontitle;
    private Resume resume;
    private Worktime worktime;

    public Worktime getWorktime() {
        return worktime;
    }

    public void setWorktime(Worktime worktime) {
        this.worktime = worktime;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Deparment getDeparment() {
        return deparment;
    }

    public void setDeparment(Deparment deparment) {
        this.deparment = deparment;
    }

    public Positiontitle getPositiontitle() {
        return positiontitle;
    }

    public void setPositiontitle(Positiontitle positiontitle) {
        this.positiontitle = positiontitle;
    }

    public Resume getResume() {
        return resume;
    }

    public void setResume(Resume resume) {
        this.resume = resume;
    }
}
