package com.gaolei.controller;

import com.gaolei.entity.Recruit;
import com.gaolei.service.RecruitService;
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
 * Created by GaoLei on 2018/7/28.
 */
@RequestMapping("/recruit")
@Controller
public class RecruitController {
    @Autowired
    private RecruitService recruitService;
    /**
     * 跳转招聘Recruit员工页面
     * */
    @RequestMapping("recruitInfo")
    public String recruitInfo(){
        return "recruit/recruit_manager";
    }
    /**
     * 弹出添加招聘信息页面
     * */
    @RequestMapping("tolayerAddRecruit")
    public Object  tolayerAddRecruit(){
      return "recruit/layerAddRecruit";
    }
    /**
     * 添加招聘信息addEmpRecruit
     * */
    @RequestMapping("addEmpRecruit")
    @ResponseBody
    public Object addEmpRecruit(Recruit recruit){
        recruit.setId(IDGenerator.getId());
        recruitService.insert(recruit);
        Map<String,Object> map = new HashMap<>();
        map.put("success",true);
        map.put("recruitId",recruit.getId());
        return map;
    }

    /**
     * 查询招聘信息
     * */
    @RequestMapping("select")
    public String select(Model model){
        List<Recruit>recruitList=  recruitService.selectAllRecruit();
        model.addAttribute("recruitList",recruitList);
        return "recruit/recruit_manager";
    }
    /**
     * 删除某一招聘信息
     * */
    @RequestMapping("delete")
    @ResponseBody
    public Object delete(String id){
        recruitService.deleteByPrimaryKey(id);
        Map<String,Object>map = new HashMap<>();
        map.put("success",true);
       return map;
    }


}
