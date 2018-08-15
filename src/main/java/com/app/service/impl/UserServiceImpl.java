package com.app.service.impl;

import com.app.dao.UserMapper;
import com.app.model.User;
import com.app.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User selectById(Integer id) {
        return userMapper.selectById(id);
    }

    @Override
    public void insertUser(User user) {
        userMapper.insertUser(user);
    }

    @Override
    public void deleteUser(Integer id) {
        userMapper.deleteUser(id);
    }
}
