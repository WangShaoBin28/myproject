package com.app.service;

import com.app.model.User;

public interface UserService {

    User selectById(Integer id);

    void insertUser(User user);

    void deleteUser(Integer id);
}
