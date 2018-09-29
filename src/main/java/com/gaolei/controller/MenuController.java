package com.gaolei.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by GaoLei on 2018/7/21.
 */
@Controller
@RequestMapping("/menu")
public class MenuController {
    /**
     * 首页
     * */
    @RequestMapping("/os")
        public String os(){
        return "menu/os";
    }
}
