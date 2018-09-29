package com.gaolei.dao;

import com.gaolei.entity.Recruit;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RecruitMapper {
    int deleteByPrimaryKey(String id);

    int insert(Recruit record);

    int insertSelective(Recruit record);

    Recruit selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Recruit record);

    int updateByPrimaryKey(Recruit record);

    List<Recruit> selectAllRecruit();
}