package com.app.controller.common;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 登入action
 * <p>
 * 创建人：王少彬
 * 时间：2018/8/15
 */
@Controller
@RequestMapping("/login/*")
public class LoginController {

    @RequestMapping("login")
    public void login() {
    }


}
