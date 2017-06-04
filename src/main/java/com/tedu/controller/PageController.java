package com.tedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * 主要用于控制页面跳转
 */
@Controller
public class PageController extends WebMvcConfigurerAdapter {

    //在浏览器地址栏输入“localhost:8090/”即可访问index.jsp主页面
    @RequestMapping("/")
    public String toHome(){
        return "forward:/WEB-INF/index.jsp";
    }

    //跳转到印象搜索页面
        @RequestMapping("toImpress")
    public String toImpress(){
        return "forward:/WEB-INF/pages/impress.jsp";
    }

    //跳转到租赁页面
    @RequestMapping("toBuy")
    public String toBuy(){
        return "forward:/WEB-INF/pages/buy.jsp";
    }

    //跳转到地图找房
    @RequestMapping("toMap")
    public String toMaphot(){
        return "forward:/WEB-INF/pages/map/mapHot.jsp";
    }
}
