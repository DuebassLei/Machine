package com.gaolei.dao;

import com.gaolei.entity.Salary;

public interface SalaryMapper {
    int deleteByPrimaryKey(String salId);

    int insert(Salary record);

    int insertSelective(Salary record);

    Salary selectByPrimaryKey(String salId);

    int updateByPrimaryKeySelective(Salary record);

    int updateByPrimaryKey(Salary record);
}