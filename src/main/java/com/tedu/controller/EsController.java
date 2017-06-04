package com.tedu.controller;

import com.tedu.pojo.House;
import com.tedu.service.EsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Ryan Noodles on 2017/6/5.
 */
@Controller
public class EsController {

    @Autowired
    private EsService esServiceImpl;


    @RequestMapping("/toeshouse")
    public String toEs(Model model){
        String keywords = "021c8ace-bd1d-4984-bec4-94d8b5ed31b6";
        House house = esServiceImpl.findHouseList(keywords);
        model.addAttribute("eshouse",house);
        return "/pages/single";
    }
}
