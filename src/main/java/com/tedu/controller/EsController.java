package com.tedu.controller;

import com.tedu.pojo.House;
import com.tedu.service.EsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Ryan Noodles on 2017/6/5.
 */
@Controller
public class EsController {

    @Autowired
    private EsService esService;


    @RequestMapping("/toeshouse")
    public String toEs(Model model){
        String keywords = "03e5f6f8-c843-40b5-be9a-b2fcfaa661ee";
        String village = "国际";
//        House house = esService.findByHid(keywords);
        List<House> houseList = esService.findByVillage(village);
//        model.addAttribute("eshouse",house);
        model.addAttribute("ehouseList",houseList);
        return "/pages/single";
    }
}
