package com.tedu.controller;

import com.tedu.pojo.House;
import com.tedu.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by leo on 2017/6/2.
 */
@Controller
public class HouseController {
        @Autowired
        private HouseService houseService;
        @RequestMapping("/tosingle")
        public  String houseDetail(Model model){
            //通过hid查询房源的具体信息
            House house = houseService.findOneByHouseId("00a71c9f-96f7-4c3f-bcba-646c75b8c2c0");
            model.addAttribute("house",house);
            //查询与房源字同地区的房源
            List<House> sameVillage=houseService.findHousesByArea(house.getArea());
            model.addAttribute("sameVillage",sameVillage);

            return "/pages/single";
        }

}
