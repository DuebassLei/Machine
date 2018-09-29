package com.gaolei.dao;

import com.gaolei.entity.Warehouse;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface WarehouseMapper {
    int deleteByPrimaryKey(String worehouseId);

    int insert(Warehouse record);

    int insertSelective(Warehouse record);

    Warehouse selectByPrimaryKey(String worehouseId);

    int updateByPrimaryKeySelective(Warehouse record);

    int updateByPrimaryKey(Warehouse record);

}