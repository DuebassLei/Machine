package com.gaolei.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Customer {
    private String cusId;

    private String worehouseId;

    private String empId;

    private String name;

    private String info;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date makeTime;

    private String address;

    private String phone;

    private String sex;

    private Boolean status;

    private String comment;

    private Float purchaseNum;

    private Integer level;

    public String getCusId() {
        return cusId;
    }

    public void setCusId(String cusId) {
        this.cusId = cusId == null ? null : cusId.trim();
    }

    public String getWorehouseId() {
        return worehouseId;
    }

    public void setWorehouseId(String worehouseId) {
        this.worehouseId = worehouseId == null ? null : worehouseId.trim();
    }

    public String getEmpId() {
        return empId;
    }

    public void setEmpId(String empId) {
        this.empId = empId == null ? null : empId.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info == null ? null : info.trim();
    }

    public Date getMakeTime() {
        return makeTime;
    }

    public void setMakeTime(Date makeTime) {
        this.makeTime = makeTime;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }

    public Float getPurchaseNum() {
        return purchaseNum;
    }

    public void setPurchaseNum(Float purchaseNum) {
        this.purchaseNum = purchaseNum;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }
}