package com.gaolei.controller;

import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.gaolei.entity.Dept;
import com.gaolei.entity.Employee;
import com.gaolei.service.DeptService;
import com.gaolei.service.EmployeeService;
import com.gaolei.utils.IDGenerator;
import com.gaolei.utils.excel.ImportExcel;
import org.apache.poi.ss.usermodel.Row;
import org.omg.CORBA.ObjectHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpSession;
import java.io.FileInputStream;
import java.util.*;
/**
 * Created by GaoLei on 2018/7/26.
 */
@RequestMapping("/emp")
@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;
    @Autowired
    private DeptService deptService;
        /**
         * 跳转到批量导入员工页面
         * */
    @RequestMapping("/showImportEmpPage")
    public String showImportStuPage(@ModelAttribute("deptId") String deptId, Model model) {
        //model.addAttribute("deptId","deptId");
        return "employee/layerImportEmp";
    }
    /**
     * 下载员工信息模板
     * */
    @RequestMapping("downloadFile")
    @ResponseBody
    public ResponseEntity<byte[]> downloadFile(HttpSession session) {
        String fileName = "员工信息导入数据_模板.xlsx";
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
    public Object improtExcel(@RequestParam("file") MultipartFile multipartFile, String deptId) {
        System.out.println("文件已经接收到！！");
        List<String[]> list = this.parseMultipartFile(multipartFile);
        int count = 0;
        for (int i = 1; i < list.size(); i++) {
            String[] strArr = list.get(i);
            Employee employee = new Employee(IDGenerator.getId(),deptId,strArr[1],strArr[2],strArr[3],strArr[4],Float.parseFloat(strArr[5]),Integer.parseInt(strArr[6]),strArr[7]);
            // String empId, String id,String name, String phone, String address, String position, Float salary, Integer age, String sex
            employeeService.insertEmployee(employee);
            count++;
        }
        Dept dept = new Dept();
        dept.setId(deptId);
        dept.setEmpCount(count);

        deptService.updateByPrimaryKeySelective(dept);
        Map<String,Object> map = new HashMap<>();
        map.put("success",true);
        map.put("updateCount",count);
        return map;
    }
    /**
     * 跳转到员工管理页面
     * */
    @RequestMapping("empManager")
    public String empManager(){
        return "employee/emp_manager";
    }

    /**
     * 查看员工页面
     * */
    @RequestMapping("select")
    public String select(Model model){
        List<Employee> employeeList = employeeService.selectAllEmployee();
        model.addAttribute("list",employeeList);
        return "employee/emp_manager";
    }
    /**
     * 删除员工行
     * */
    @RequestMapping("delete")
    @ResponseBody
    public Object delete(String id){
        employeeService.deleteEmployee(id);
        Map<String,Object> map  = new HashMap<>();
        map.put("success",true);
        return map;
        }
        /**
         * 选取待更新员工信息行，拿到员工初始信息
         * */
      @RequestMapping("updateEmp")
      public  String updateEmp(String empId,Model model){
          Employee employee = employeeService.selectEmplopyeeById(empId);
          model.addAttribute("employee",employee);
          return "employee/layerUpdateEmp";
      }
    /**
     * 更新员工信息
     * */
    @RequestMapping("submitUpdateEmp")
    @ResponseBody
    public Object submitUpdateEmp(Employee employee){
        employeeService.updateEmployee(employee);
        Map<String,Object> map = new HashMap<>();
        map.put("success",true);
        map.put("empId",employee.getEmpId());
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
