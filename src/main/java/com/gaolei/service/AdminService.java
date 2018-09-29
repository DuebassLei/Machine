package com.gaolei.service;

import com.gaolei.entity.Admin;

/**
 * Created by GaoLei on 2018/7/30.
 */
public interface AdminService {
    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(String adminId);

    int updateByPrimaryKeySelective(Admin record);

    Admin  selectByName(String name);

}
