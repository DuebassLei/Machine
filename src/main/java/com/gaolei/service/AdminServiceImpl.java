package com.gaolei.service;

import com.gaolei.dao.AdminMapper;
import com.gaolei.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by GaoLei on 2018/7/30.
 */
@Service
@Transactional
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;
    @Override
    public int insert(Admin record) {
        adminMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(Admin record) {
        adminMapper.insertSelective(record);
        return 0;
    }

    @Override
    public Admin selectByPrimaryKey(String adminId) {
        return  adminMapper.selectByPrimaryKey(adminId);
    }

    @Override
    public int updateByPrimaryKeySelective(Admin record) {
        adminMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public Admin selectByName(String name) {
        return  adminMapper.selectByName(name);
    }
}
