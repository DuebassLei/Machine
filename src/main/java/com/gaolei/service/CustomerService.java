package com.gaolei.service;

import com.gaolei.entity.Customer;

import java.util.List;

/**
 * Created by GaoLei on 2018/7/30.
 */
public interface CustomerService {

    int deleteByPrimaryKey(String cusId);

    int insert(Customer record);

    int insertSelective(Customer record);

    Customer selectByPrimaryKey(String cusId);

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);

    List<Customer> selectAllCustomer();
}
