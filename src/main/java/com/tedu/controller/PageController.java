package com.tedu.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.tedu.pojo.House;
import com.tedu.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import java.util.List;

/**
 * 主要用于控制页面跳转
 */
@Controller
public class PageController extends WebMvcConfigurerAdapter {

    @Autowired
    private HouseService houseService;

    //在浏览器地址栏输入“localhost:8090/”即可访问index.jsp主页面
    @RequestMapping("/")
    public String toHome(){
        return "/index";
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
    public String toMaphot(Model model) throws JsonProcessingException {
        List<House> houseList = houseService.findAll();
        String houseJson = new ObjectMapper().writeValueAsString(houseList);
        System.out.println(houseJson);
        model.addAttribute("houseJson",houseJson);
        return "forward:/WEB-INF/pages/map/mapSearch.jsp";
    }
}
