package com.app.service.impl;

import com.app.dao.DemoMapper;
import com.app.model.Demo;
import com.app.service.DemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DemoServiceImpl implements DemoService {

    @Autowired
    private DemoMapper demoMapper;

    @Override
    public List<Demo> findParentList() {
        return demoMapper.findParentList();
    }
    /**
     * 根据一级id查询二级
     */
    @Override
    public List<Demo> findChildren(Integer parentId) {
        return demoMapper.findChildren(parentId);
    }
}
