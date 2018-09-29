package com.gaolei.service;

import com.gaolei.dao.CustomerMapper;
import com.gaolei.entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by GaoLei on 2018/7/30.
 */
@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerMapper customerMapper;
    @Override
    public int deleteByPrimaryKey(String cusId) {
        customerMapper.deleteByPrimaryKey(cusId);
        return 0;
    }

    @Override
    public int insert(Customer record) {
        customerMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(Customer record) {
        customerMapper.insertSelective(record);
        return 0;
    }

    @Override
    public Customer selectByPrimaryKey(String cusId) {
        return customerMapper.selectByPrimaryKey(cusId);
    }

    @Override
    public int updateByPrimaryKeySelective(Customer record) {
        customerMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Customer record) {
        customerMapper.updateByPrimaryKey(record);
        return 0;
    }

    @Override
    public List<Customer> selectAllCustomer() {
        return customerMapper.selectAllCustomer();
    }
}
