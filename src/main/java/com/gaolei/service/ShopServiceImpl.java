package com.gaolei.service;

import com.gaolei.dao.ShopMapper;
import com.gaolei.entity.Shop;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by GaoLei on 2018/7/28.
 */
@Service
@Transactional
public class ShopServiceImpl implements ShopService {
    @Autowired
    private ShopMapper shopMapper;
    @Override
    public int deleteByPrimaryKey(String shopId) {
        shopMapper.deleteByPrimaryKey(shopId);
        return 0;
    }

    @Override
    public int insert(Shop record) {
        shopMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(Shop record) {
        shopMapper.insertSelective(record);
        return 0;
    }

    @Override
    public Shop selectByPrimaryKey(String shopId) {
        return  shopMapper.selectByPrimaryKey(shopId);

    }

    @Override
    public int updateByPrimaryKeySelective(Shop record) {
        shopMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Shop record) {
        shopMapper.updateByPrimaryKey(record);
        return 0;
    }

    @Override
    public List<Shop> selectAllShop() {
        return shopMapper.selectAllShop();
    }

    @Override
    public List<Shop> selectShopKind(String kind) {
        return shopMapper.selectShopKind(kind);
    }

    @Override
    public List<Shop> selectShopByName(String name) {
        return shopMapper.selectShopByName(name);
    }

    @Override
    public List<Shop> selectByWhName(String worehouse_id) {
        return shopMapper.selectByWhName(worehouse_id);
    }


}
