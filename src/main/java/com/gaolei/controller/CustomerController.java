package com.gaolei.controller;

import com.gaolei.entity.Customer;
import com.gaolei.service.CustomerService;
import com.gaolei.utils.IDGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by GaoLei on 2018/7/27.
 */
@RequestMapping("/customer")
@Controller
public class CustomerController {
    @Autowired
    private CustomerService customerService;
    /**
     *  To Customer Manager Pages
     * */
    @RequestMapping("cusManager")
    public  String cusManager(){

        return "customer/cus_manager";
    }

    /**
     * Select  All Customer
     * */
    @RequestMapping("selectAllCustomer")
    public String selectAllCustomer(Model model){
        List<Customer> customerList = customerService.selectAllCustomer();
        model.addAttribute("cusList",customerList);
        return "customer/cus_manager";
    }
    /**
     * Goto Customer Page
     * */
    @RequestMapping("tolayerAddCustomer")
    public String tolayerAddCustomer(){

        return "customer/layerAddCustomer";
    }
    /**
     * Add Customer Pages
     * */
    @RequestMapping("addCustomer")
    @ResponseBody
    public Object addCustomer(Customer customer){
        customer.setCusId(IDGenerator.getId());
        customerService.insert(customer);
        Map<String ,Object> map = new HashMap<>();
        map.put("success",true);
        return map;
    }
    /**
     * Delete Customer
     * */
    @RequestMapping("delete")
    @ResponseBody
    public Object delete(String id){
        customerService.deleteByPrimaryKey(id);
        Map<String,Object>map  = new HashMap<>();
        map.put("success",true);
        return map;
    }
    /**
     * 拿到需要修改客户的原始信息
     * */
    @RequestMapping("tolayerUpdateCustomer")
    public String tolayerUpdateCustomer(String id,Model model){
        Customer customer = customerService.selectByPrimaryKey(id);
        model.addAttribute("customer",customer);
        return "customer/layerUpdateCustomer";
    }
    /**
     * Update Customer Information
     * */
    @RequestMapping("updateCustomer")
    @ResponseBody
    public  Object updateCustomer(Customer customer){
        customerService.updateByPrimaryKey(customer);
        Map<String,Object>map  = new HashMap<>();
        map.put("success",true);
        return map;
    }
}
