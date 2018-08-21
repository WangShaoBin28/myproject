package com.app.controller.common;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 创建人：王少彬
 * 时间：2018/8/15
 */
@Controller
@Slf4j
public class IndexController {

    @RequestMapping("/")
    public String index() {
        return "redirect:/login/login";
    }
}
