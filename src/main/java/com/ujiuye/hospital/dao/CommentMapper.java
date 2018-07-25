package com.ujiuye.hospital.dao;

import com.ujiuye.hospital.bean.Comment;

public interface CommentMapper {
    int deleteByPrimaryKey(Integer c_id);

    int insert(Comment record);

    int insertSelective(Comment record);

    Comment selectByPrimaryKey(Integer c_id);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);
}