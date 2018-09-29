package com.gaolei.service;

import com.gaolei.entity.Shop;

import java.util.List;

/**
 * Created by GaoLei on 2018/7/28.
 */
public interface ShopService {
    int deleteByPrimaryKey(String shopId);

    int insert(Shop record);

    int insertSelective(Shop record);

    Shop selectByPrimaryKey(String shopId);

    int updateByPrimaryKeySelective(Shop record);

    int updateByPrimaryKey(Shop record);

    List<Shop> selectAllShop();

    List<Shop>selectShopKind(String kind);

    List<Shop>selectShopByName(String name);

    List<Shop> selectByWhName(String worehouse_id);
}
