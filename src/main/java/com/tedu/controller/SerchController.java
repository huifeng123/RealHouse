package com.tedu.controller;

import com.tedu.pojo.House;
import com.tedu.service.EsService;
import com.tedu.service.SerchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by bigjsd on 2017/6/4.
 */
@Controller
public class SerchController {
    @Autowired
    private EsService esService;

    @Autowired
    private SerchService serchService;
    @RequestMapping("/serch")
    public String serchFind(@RequestParam(required = true) String serch, Model model){
        System.out.println("1111111111111111111");
        //通过提交的关键字查询全局数据
//        System.out.println(serch);
        String village = serch;
//        List<House> houseList = serchService.findSerchAll(serch);
        List<House> houseList = esService.findByVillage(village);
//        model.addAttribute("ehouseList",houseList);
        System.out.print(houseList);
        model.addAttribute("houseList",houseList);
        return "/pages/buy";
    }
}
