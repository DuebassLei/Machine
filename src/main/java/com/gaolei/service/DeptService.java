package com.gaolei.service;

import com.gaolei.entity.Dept;

import java.util.List;

/**
 * Created by GaoLei on 2018/7/26.
 */
public interface DeptService {

     void insertDept(Dept dept);

     List<Dept> selectAllDept();

     void deleteDept(String id);

     Dept selectDeptById(String id);

     int updateDept(Dept record);

     void updateByPrimaryKeySelective(Dept record);


}
