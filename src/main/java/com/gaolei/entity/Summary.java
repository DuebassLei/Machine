package com.gaolei.entity;

public class Summary {
    private String sumId;

    private Float orderPrice;

    private Float orderCount;

    public String getSumId() {
        return sumId;
    }

    public void setSumId(String sumId) {
        this.sumId = sumId == null ? null : sumId.trim();
    }

    public Float getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(Float orderPrice) {
        this.orderPrice = orderPrice;
    }

    public Float getOrderCount() {
        return orderCount;
    }

    public void setOrderCount(Float orderCount) {
        this.orderCount = orderCount;
    }
}