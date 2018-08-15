package com.app.dao;

import com.app.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserMapper {


    User selectById(@Param("id") Integer id);

    void insertUser(User user);

    void deleteUser(Integer id);
}
