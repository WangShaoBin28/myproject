package com.app.controller;

import com.app.model.User;
import com.app.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * 测试
 */
@Controller
@RequestMapping("/user/*")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("list")
    public User list(HttpServletRequest request, Integer id) {

        return userService.selectById(id);
    }

    @RequestMapping("insertUser")
    public void insertUser(HttpServletRequest request) {

        User user = new User();
        user.setName("张三");
        user.setAge("25");

        userService.insertUser(user);
    }

    @RequestMapping("deleteUser")
    public void deleteUser(HttpServletRequest request, Integer id) {
        userService.deleteUser(id);
    }

}
