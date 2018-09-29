package com.gaolei.dao;

import com.gaolei.entity.Shop;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ShopMapper {
    int deleteByPrimaryKey(String shopId);

    int insert(Shop record);

    int insertSelective(Shop record);

    Shop selectByPrimaryKey(String shopId);

    int updateByPrimaryKeySelective(Shop record);

    int updateByPrimaryKey(Shop record);

    List<Shop> selectAllShop();

    List<Shop>selectShopKind(String kind);

    List<Shop>selectShopByName(String name);

    List<Shop>selectByWhName(String worehouse_id);


}