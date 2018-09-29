package com.gaolei.service;

import com.gaolei.dao.EmployeeMapper;
import com.gaolei.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by GaoLei on 2018/7/26.
 */
@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {
    @Override
    public void updateEmployee(Employee record) {
        employeeMapper.updateByPrimaryKey(record);
    }

    @Autowired
    private EmployeeMapper employeeMapper;

    @Override
    public void insert(Employee employee) {
        employeeMapper.insert(employee);
    }

    @Override
    public List<Employee> selectAllEmployee() {
        return employeeMapper.selectAllEmployee();
    }
    @Override
    public void insertEmployee(Employee employee) {
        employeeMapper.insertEmployee(employee);
    }

    @Override
    public void deleteEmployee(String empId) {
        employeeMapper.deleteByPrimaryKey(empId);
    }


    @Override
    public Employee selectEmplopyeeById(String empId) {
        return employeeMapper.selectByPrimaryKey(empId);
    }

}
