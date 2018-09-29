package com.gaolei.service;

import com.gaolei.entity.Warehouse;

import java.util.List;

/**
 * Created by GaoLei on 2018/8/2.
 */
public interface WhService {

    void deleteByPrimaryKey(String worehouseId);

    void insert(Warehouse record);

   void insertSelective(Warehouse record);

    Warehouse selectByPrimaryKey(String worehouseId);

    void updateByPrimaryKeySelective(Warehouse record);

    void updateByPrimaryKey(Warehouse record);



}
