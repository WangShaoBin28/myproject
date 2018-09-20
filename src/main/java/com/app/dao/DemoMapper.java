package com.app.dao;

import com.app.model.Demo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface DemoMapper {

    /**
     * 获取一级菜单
     */
    List<Demo> findParentList();

    /**
     * 根据一级id查询二级
     */
    List<Demo> findChildren(Integer parentId);
}
