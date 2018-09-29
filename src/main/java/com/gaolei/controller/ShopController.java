package com.gaolei.controller;


import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.gaolei.entity.Shop;
import com.gaolei.service.ShopService;
import com.gaolei.utils.IDGenerator;
import com.gaolei.utils.excel.ImportExcel;
import org.apache.poi.ss.usermodel.Row;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpSession;
import java.io.FileInputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by GaoLei on 2018/7/28.
 */
@RequestMapping("/shop")
@Controller
public class ShopController {
    @Autowired
    private ShopService shopService;
    /**
     * 跳转商品管理界面
     * */
    @RequestMapping("shopManager")
    public String shopManager(){
     return "shop/shop_manager";
    }
    /**
     * 弹出添加单个商品信息表tolayerAddOneShop
     * */
    @RequestMapping("tolayerAddOneShop")
    public String tolayerAddOneShop(){
        return "shop/layerAddOneShop";
    }

    /**
     * 弹出添加多个商品信息表tolayerAddManyShop
     * */
    @RequestMapping("tolayerAddManyShop")
    public String tolayerAddManyShop(){
        return "shop/layerAddManyShop";
    }
    /**
     * 添加单个商品addOneShop
     * */
    @RequestMapping("addOneShop")
    @ResponseBody
    public Object addShop(Shop shop){
        shop.setShopId(IDGenerator.getId());
        //shopService.insertSelective(shop);
        shopService.insert(shop);
        Map<String,Object> map  =new HashMap<>();
        map.put("success",true);
        return map;
    }
    /**
     * 下载商品信息模板
     * */
    @RequestMapping("downloadFile")
    @ResponseBody
    public ResponseEntity<byte[]> downloadFile(HttpSession session) {
        String fileName = "商品信息导入_模板.xlsx";
        FileInputStream fileInputStream = null;
        try {
            System.out.println("下载模板文件。。。");
            fileInputStream = new FileInputStream(session.getServletContext().getRealPath("/WEB-INF/base_files/" + fileName));
            byte[] bs = new byte[fileInputStream.available()];
            fileInputStream.read(bs);
            fileName = new String(fileName.getBytes("GBK"), "ISO-8859-1");//防止中文乱码
            HttpHeaders headers = new HttpHeaders();//设置响应头
            headers.add("Content-Disposition", "attachment;filename=" + fileName);
            HttpStatus statusCode = HttpStatus.OK;//设置响应吗
            ResponseEntity<byte[]> response = new ResponseEntity<byte[]>(bs, headers, statusCode);
            return response;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    /**
     * 上传员工信息表
     * */
    @RequestMapping("uploadEmp")
    @ResponseBody
    public Object improtExcel(@RequestParam("file") MultipartFile multipartFile) {
        System.out.println("文件已经接收到！！");
        List<String[]> list = this.parseMultipartFile(multipartFile);
        int count = 0;
        for (int i = 1; i < list.size(); i++) {
            String[] strArr = list.get(i);
            SimpleDateFormat sdf  = new SimpleDateFormat("yyyy-MM-dd");
            Date  date = null;
            try {
               date  = sdf.parse(strArr[6]);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            Shop shop = new Shop(IDGenerator.getId(),strArr[1],Integer.parseInt(strArr[2]),strArr[3],Integer.parseInt(strArr[4]),strArr[5],date,strArr[7]);
          //  String shopId, String name, Integer price, String info, Integer count, String kind, Date makeTime, String address
            shopService.insert(shop);
            count++;
        }
        Map<String,Object> map = new HashMap<>();
        map.put("success",true);
        map.put("updateCount",count);
        return map;
    }
    /**
     * 商品分类
     * */
    @RequestMapping("shopKind")
    public String shopKind(){
        return "shop/shop_kind";
    }


     /**
     * 查询商品分类kind
     * */
     @RequestMapping("selectShopKind")
     @ResponseBody
     public Object selectShopKind(String kind){
         List<Shop> shopList = shopService.selectShopKind(kind);
         Map<String ,Object> map  =new HashMap<>();
         if (shopList.isEmpty()){
           // System.out.println("该类别商品不存！");
             map.put("success",false);
             return  map;
         }
         map.put("success" ,true);
         //String shopJson = JSONUtils.toJSONString(shopList);
         map.put("shopList",shopList);
         return  map;
     }
     /**
      * 商品处理，商品的删除，更新，查看商品信息
      * */
    @RequestMapping("shopCrud")
    public String shopCrud(){
        return "shop/shop_crud";
    }
    /**
     * Look All Shop
     * */
    @RequestMapping("lookShop")
    public  String  lookShop(Model model){
        List<Shop>shopList = shopService.selectAllShop();
        model.addAttribute("shopList",shopList);
        return "shop/shop_lookShop";
    }

    /**
     * Delete Shop
     * */
    @RequestMapping("delete")
    @ResponseBody
    public Object delete(String id){
        shopService.deleteByPrimaryKey(id);
        Map<String ,Object> map = new HashMap<>();
        map.put("success",true);
        map.put("shopId",id);
        return map;
    }

    /**
     * To Update ShopPage
     * */
    @RequestMapping("updateShop")
    public String updateShop(String id,Model model){
      Shop shop =  shopService.selectByPrimaryKey(id);
      model.addAttribute("shop",shop);
      return "shop/layerUpdateShop";
    }
    /**
     * Submit Update Shop
     * */
    @RequestMapping("submitUpdateShop")
    @ResponseBody
    public  Object submitUpdateShop(Shop shop){
        shopService.updateByPrimaryKey(shop);
        Map<String ,Object> map = new HashMap<>();
        map.put("success",true);
        return  map;
    }
    /**
     * To Find Shop Pages
     * */
    @RequestMapping("findShop")
    public String findShop(){
        return "shop/shop_find";
    }

    /**
     * Find Shop By Name
     * */
    @RequestMapping("findNameShop")
    @ResponseBody
    public Object findNameShop(String id){
        System.out.println(id);
        List<Shop> shopList = shopService.selectShopByName(id);
        Map<String,Object>map = new HashMap<>();
        map.put("success",true);
        map.put("shopList",shopList);
        return  map;
    }
    /**
     * Excel 表格数据处理类
     * */
    private List<String[]> parseMultipartFile(MultipartFile multipartFile){
        List<String[]> all = new ArrayList<>();
        try{
            ImportExcel ei= new ImportExcel(multipartFile, 0,0);
            StringBuilder eachRow=new StringBuilder();
            outter:for (int i = ei.getDataRowNum(); i < ei.getLastDataRowNum(); i++) {
                Row row = ei.getRow(i);
                String[] rowArr = new String[ei.getLastCellNum()];
                for (int j = 0; j < ei.getLastCellNum(); j++) {
                    if((ei.getCellValue(row,1)+"").trim().length()<=0){
                        continue outter;
                    }
                    Object val = ei.getCellValue(row,j);
                    if(val instanceof Double){//double 类型的数字，去掉 .00
                        double d = (Double) val;
                        val = (int)d;
                    }
                    rowArr[j] =String.valueOf(val).trim();
                }
                all.add(rowArr);
            }
        } catch (InvalidFormatException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return all.size()>0?all:null;
    }


}
