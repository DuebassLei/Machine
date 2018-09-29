package com.gaolei.service;

import com.gaolei.dao.WarehouseMapper;
import com.gaolei.entity.Warehouse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by GaoLei on 2018/8/2.
 */
@Service
@Transactional
public class WhServiceImpl implements WhService{
    @Autowired
    private WarehouseMapper whMapper;
    @Override
    public void deleteByPrimaryKey(String worehouseId) {
        whMapper.deleteByPrimaryKey(worehouseId);
    }

    @Override
    public void insert(Warehouse record) {
        whMapper.insert(record);
    }

    @Override
    public void insertSelective(Warehouse record) {
    whMapper.insertSelective(record);
    }

    @Override
    public Warehouse selectByPrimaryKey(String worehouseId) {
        return  whMapper.selectByPrimaryKey(worehouseId);
    }

    @Override
    public void updateByPrimaryKeySelective(Warehouse record) {
        whMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public void updateByPrimaryKey(Warehouse record) {
        whMapper.updateByPrimaryKey(record);
    }

}
