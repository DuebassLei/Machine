package com.gaolei.controller;

import com.gaolei.entity.Admin;
import com.gaolei.service.AdminService;
import com.gaolei.utils.IDGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by GaoLei on 2018/7/30.
 */
@RequestMapping("admin")
@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;
    /**
     * Login Pages
     * */
    @RequestMapping("index")
    public String  index(){
        return "admin/login";
    }
    /**
     * Check User ,Password
     * */
    @RequestMapping("validate")
    public String validate(HttpServletRequest request) {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        Admin admin = adminService.selectByName(name);
        if(admin!=null){
           System.out.println("用户存在");
           if (admin.getPassword().equals(password)) {
               System.out.println("验证成功！");
               return "menu/os";
           }
           else
               return  "admin/error_pwd";
       }

//        if (!admin.equals(null)) {
//
//        }
        return "admin/register";
    }
    /**
     * Register Admin
     * */
    @RequestMapping("registerAdmin")
    public String registerAdmin(Admin admin){
        admin.setAdminId(IDGenerator.getId());
        adminService.insert(admin);
        return "admin/login";
    }

     @RequestMapping("register")
    public String register(){
        return "admin/register";
    }



}
