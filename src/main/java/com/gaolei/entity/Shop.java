package com.gaolei.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Shop {
    private String shopId;

    private String empId;

    private String orderId;

    private String cusId;

    private String worehouseId;

    private String name;

    private Integer price;

    private String info;

    private Boolean status;

    private Integer count;

    private String kind;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date makeTime;

    private String address;

    public Shop() {
    }

    public Shop(String shopId, String name, Integer price, String info, Integer count, String kind, Date makeTime, String address) {
        this.shopId = shopId;
        this.name = name;
        this.price = price;
        this.info = info;
        this.count = count;
        this.kind = kind;
        this.makeTime = makeTime;
        this.address = address;
    }

    public String getShopId() {
        return shopId;
    }

    public void setShopId(String shopId) {
        this.shopId = shopId == null ? null : shopId.trim();
    }

    public String getEmpId() {
        return empId;
    }

    public void setEmpId(String empId) {
        this.empId = empId == null ? null : empId.trim();
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId == null ? null : orderId.trim();
    }

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info == null ? null : info.trim();
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind == null ? null : kind.trim();
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
}