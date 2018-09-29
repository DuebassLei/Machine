package com.gaolei.controller;

import com.gaolei.entity.Shop;
import com.gaolei.entity.Warehouse;
import com.gaolei.service.ShopService;
import com.gaolei.service.WhService;
import com.gaolei.utils.IDGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by GaoLei on 2018/8/2.
 */
@RequestMapping("warehouse")
@Controller
public class WarehouseController {
    @Autowired
    private WhService whService;
    @Autowired
    private ShopService shopService;

    /**
     * 跳转采购计划管理Page
     * */
    @RequestMapping("warehousePlan")
    public  String plan(){
      return  "warehouse/wh_plan";
    }

    /**
     * 跳转货源供应商Page
     * */
    @RequestMapping("supplies")
    public String  supplies(){
        return "warehouse/wh_suppliesPage";
    }
    /**
     * 入库Page
     * */
    @RequestMapping("inBound")
    public String inBound(){
        return "warehouse/wh_inBound";
    }

    /**
     * 出库Page
     * */
    @RequestMapping("outBound")
    public String outBound(){
        return "warehouse/wh_outBound";

    }
    /**
     * 仓库管理warehouseOS
     * */
    @RequestMapping("warehouseOS")
    public String warehouseOS(){
        return "warehouse/wh_OS";
    }
    /**
     * 填写仓库信息Page
     * */
    @RequestMapping("tolayerAddWH")
    public String tolayerAddWH(){

        return "warehouse/layerAddWH";
    }
    /**
     * Add Warehouse
     * */
    @RequestMapping("addWH")
    @ResponseBody
    public Object addWH(Warehouse warehouse){
        warehouse.setWorehouseId(IDGenerator.getId());
        whService.insertSelective(warehouse);
        Map<String ,Object> map = new HashMap<>();
        map.put("success",true);
        return  map;
    }
    /**
     * Goto addWhShop Page
     * */
    @RequestMapping("tolayerAddWhShop")
    public String tolayerAddWhShop(){
        return "warehouse/wh_addWhShop";
    }
    /**
     * add Warehouse Shop Action
     * */
    @RequestMapping("addWhShop")
    @ResponseBody
    public Object addWhSho(Shop shop){
       shop.setShopId(IDGenerator.getId());
       shopService.insert(shop);
        System.out.println("插入成功！");
       Map<String,Object> map  = new HashMap<>();
       map.put("success",true);
       return map;
    }
   /**
    * 选择查看商铺page
    * */
   @RequestMapping("layerShowWhShop")
    public  String  selectWhShop(){

       return "warehouse/wh_showWhShop";
   }
   /**
    * 查看仓库商品selectWhName
    * */
   @RequestMapping("selectWhName")
    @ResponseBody
    public Object selectWhName(String name){
       List<Shop> shopList  = shopService.selectByWhName(name);
       System.out.println(shopList);
       Map<String ,Object>map = new HashMap<>();
       map.put("success",true);
       map.put("shopList",shopList);
       return  map;
   }

}
