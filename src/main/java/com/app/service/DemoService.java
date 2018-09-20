package com.app.service;

import com.app.model.Demo;

import java.util.List;

public interface DemoService {

    /**
     * 获取一级菜单
     */
    List<Demo> findParentList();

    /**
     * 根据一级id查询二级
     */
    List<Demo> findChildren(Integer parentId);
}
