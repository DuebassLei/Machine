package com.gaolei.service;


import com.gaolei.dao.RecruitMapper;
import com.gaolei.entity.Recruit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by GaoLei on 2018/7/28.
 */
@Service
@Transactional
public class RecruitServiceImpl  implements  RecruitService{
    @Autowired
    private RecruitMapper recruitMapper;

    @Override
    public int deleteByPrimaryKey(String id) {
        recruitMapper.deleteByPrimaryKey(id);
        return 0;
    }

    @Override
    public int insert(Recruit record) {
        recruitMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(Recruit record) {
        recruitMapper.insertSelective(record);
        return 0;
    }

    @Override
    public Recruit selectByPrimaryKey(String id) {
        recruitMapper.selectByPrimaryKey(id);
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Recruit record) {
        recruitMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Recruit record) {
        recruitMapper.updateByPrimaryKey(record);
        return 0;
    }

    @Override
    public List<Recruit> selectAllRecruit() {
       return recruitMapper.selectAllRecruit();

    }
}
