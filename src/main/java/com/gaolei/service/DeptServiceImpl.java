package com.gaolei.service;

import com.gaolei.dao.DeptMapper;
import com.gaolei.entity.Dept;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by GaoLei on 2018/7/26.
 */
@Service
@Transactional
public class DeptServiceImpl implements DeptService {
    @Autowired
    private DeptMapper deptMapper;

    @Override
    public void insertDept(Dept dept) {
        deptMapper.insert(dept);
    }

    @Override
    public List<Dept> selectAllDept() {
        return deptMapper.selectAllDept();
    }

    @Override
    public void deleteDept(String id) {
        deptMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Dept selectDeptById(String id) {
       return deptMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateDept(Dept record) {
        deptMapper.updateByPrimaryKey(record);
        return 0;
    }
    @Override
    public void updateByPrimaryKeySelective(Dept record) {
        deptMapper.updateByPrimaryKeySelective(record);
    }
}
