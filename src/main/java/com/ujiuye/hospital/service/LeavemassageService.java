package com.ujiuye.hospital.service;

import com.ujiuye.hospital.bean.Doctorreplymessage;
import com.ujiuye.hospital.bean.Leavemessage;
import com.ujiuye.hospital.vo.DoctorQuery;
import com.ujiuye.hospital.vo.LeavemessageVo;
import com.ujiuye.hospital.vo.ReplyVo;

import java.util.List;

public interface LeavemassageService {
    int save(Leavemessage leavemessage);

    List<ReplyVo> getReplyByPatientId(Integer patient_id);

    void updataRead(Doctorreplymessage read);

    void deleteReply(Integer id);

    List<LeavemessageVo> searchLeavemsg(DoctorQuery query);

    int saveReply(Doctorreplymessage replymsg);

    Leavemessage getLeavemsgById(Integer id);
}
