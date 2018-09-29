package com.gaolei.entity;

public class Warehouse {
    private String worehouseId;

    private String name;

    private String shop;

    private String address;

    private Integer stockIn;

    private Integer stockOut;

    private Integer volume;

    private Integer nowVolume;

    private Boolean status;

    private Integer customerStock;

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

    public String getShop() {
        return shop;
    }

    public void setShop(String shop) {
        this.shop = shop == null ? null : shop.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Integer getStockIn() {
        return stockIn;
    }

    public void setStockIn(Integer stockIn) {
        this.stockIn = stockIn;
    }

    public Integer getStockOut() {
        return stockOut;
    }

    public void setStockOut(Integer stockOut) {
        this.stockOut = stockOut;
    }

    public Integer getVolume() {
        return volume;
    }

    public void setVolume(Integer volume) {
        this.volume = volume;
    }

    public Integer getNowVolume() {
        return nowVolume;
    }

    public void setNowVolume(Integer nowVolume) {
        this.nowVolume = nowVolume;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public Integer getCustomerStock() {
        return customerStock;
    }

    public void setCustomerStock(Integer customerStock) {
        this.customerStock = customerStock;
    }
}