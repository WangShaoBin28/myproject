package com.app.controller;

import com.app.dao.DemoMapper;
import com.app.model.Demo;
import com.app.service.DemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


@Controller
@RequestMapping("/demo")
public class DemoController {

    @Autowired
    private DemoService demoService;

    @RequestMapping("/demo")
    public String demo(ModelMap modelMap) {
//        查询一级菜单
        List<Demo> parentList = demoService.findParentList();
        modelMap.addAttribute("parentList", parentList);
        return "/demo/demo";
    }

    @RequestMapping("/children")
    @ResponseBody
    public List<Demo> children(ModelMap modelMap, Integer parentId) {
//        查询一级菜单
        List<Demo> parentList = demoService.findChildren(parentId);
        return parentList;
    }

}
