package com.gaolei.dao;

import com.gaolei.entity.Summary;

public interface SummaryMapper {
    int deleteByPrimaryKey(String sumId);

    int insert(Summary record);

    int insertSelective(Summary record);

    Summary selectByPrimaryKey(String sumId);

    int updateByPrimaryKeySelective(Summary record);

    int updateByPrimaryKey(Summary record);
}