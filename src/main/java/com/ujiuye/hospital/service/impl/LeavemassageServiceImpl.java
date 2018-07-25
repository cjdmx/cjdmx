package com.ujiuye.hospital.service.impl;

import com.ujiuye.hospital.bean.Doctorreplymessage;
import com.ujiuye.hospital.bean.Leavemessage;
import com.ujiuye.hospital.dao.DoctorreplymessageMapper;
import com.ujiuye.hospital.dao.LeavemessageMapper;
import com.ujiuye.hospital.service.LeavemassageService;
import com.ujiuye.hospital.vo.DoctorQuery;
import com.ujiuye.hospital.vo.LeavemessageVo;
import com.ujiuye.hospital.vo.ReplyVo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class LeavemassageServiceImpl implements LeavemassageService {

    @Resource
    LeavemessageMapper leavemsgMapper;
    @Resource
    DoctorreplymessageMapper replyMapper;

    @Override
    public int save(Leavemessage leavemessage) {
        leavemessage.setCreated_date(new Date());
        return leavemsgMapper.insertSelective(leavemessage);
    }

    @Override
    public List<ReplyVo> getReplyByPatientId(Integer patient_id) {
        return replyMapper.getByPatientId(patient_id);
    }

    @Override
    public void updataRead(Doctorreplymessage read) {
        replyMapper.updateByPrimaryKeySelective(read);
    }

    @Override
    public void deleteReply(Integer id) {
        replyMapper.deleteByPrimaryKey(id);
    }

    @Override
    public List<LeavemessageVo> searchLeavemsg(DoctorQuery query) {
        return leavemsgMapper.searchLeavemsg(query);
    }

    @Override
    public int saveReply(Doctorreplymessage replymsg) {
        replymsg.setCreated_date(new Date());
        return replyMapper.insertSelective(replymsg);
    }

    @Override
    public Leavemessage getLeavemsgById(Integer id) {
        return leavemsgMapper.selectByPrimaryKey(id);
    }
}
