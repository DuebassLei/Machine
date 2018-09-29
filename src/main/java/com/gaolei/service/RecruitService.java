package com.gaolei.service;

import com.gaolei.entity.Recruit;

import java.util.List;

/**
 * Created by GaoLei on 2018/7/28.
 */
public interface RecruitService {

    int deleteByPrimaryKey(String id);

    int insert(Recruit record);

    int insertSelective(Recruit record);

    Recruit selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Recruit record);

    int updateByPrimaryKey(Recruit record);

    List<Recruit> selectAllRecruit();
}
