package com.gaolei.service;

import com.gaolei.entity.Dept;
import com.gaolei.entity.Employee;

import java.util.List;

/**
 * Created by GaoLei on 2018/7/26.
 */
public interface EmployeeService {
    void insert(Employee employee);

     List<Employee> selectAllEmployee();
    /**
     * 插入employe部分信息
     *  id,name, phone, address,position, salary, age, sex
     * */
    void insertEmployee(Employee employee);

    void deleteEmployee(String empId);

    void updateEmployee(Employee record);

    Employee selectEmplopyeeById(String empId);
}
