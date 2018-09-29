package com.gaolei.controller;

import com.gaolei.entity.Dept;
import com.gaolei.service.DeptService;
import com.gaolei.utils.IDGenerator;
import org.apache.shiro.crypto.hash.Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by GaoLei on 2018/7/26.
 */
@Controller
@RequestMapping("/dept")
public class DeptController {
    @Autowired
    private DeptService deptService;

    /**
     *  部门页表
     * */
    @RequestMapping("deptManager")
    public String deptManager(){
        return "dept/dept_manager";
    }
    /**
     * 显示部门信息
     * */
    @RequestMapping("select")
    public  String select(Model model){
        List<Dept> deptList  = deptService.selectAllDept();
        model.addAttribute("deptList",deptList);
        return "dept/dept_manager";
    }
    /**
     * 弹出添加Dept信息表单
     * */
    @RequestMapping("tolayerAddDept")
    public String tolayerAddDept() {
        return "dept/layerAddDept";
    }
    /**
     * 添加部门信息
     * */
    @RequestMapping("addDept")
    @ResponseBody
    public Object submitAddDept(Dept dept){
        dept.setId(IDGenerator.getId());
        deptService.insertDept(dept);
        Map<String,Object> map = new HashMap<>();
        map.put("success",true);
        map.put("obj_id",dept.getId());
        return  map;
    }
/**
 * 删除部门Dept
 * */
    @RequestMapping("/delete")
    @ResponseBody
    public Object delete(String id) {
        deptService.deleteDept(id);
        Map<String,Object> map = new HashMap<>();
        map.put("success",true);
        return map;
    }
/**
 * 更新部门Dept信息
 * */
    @RequestMapping("updateDept")
    public String updateDept(String id,Model model){
        Dept dept  = deptService.selectDeptById(id);
        model.addAttribute("dept",dept);
        return "dept/layerUpdateDept";
    }

    @RequestMapping("submitUpdateDept")
    @ResponseBody
    public Object submitUpdateDept(Dept dept){
        deptService.updateDept(dept);
        Map<String ,Object> map = new HashMap<>();
        map.put("success",true);
        map.put("deptId",dept.getId());
        return map;
    }

}
