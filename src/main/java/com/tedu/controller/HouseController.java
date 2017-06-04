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
       // @RequestMapping("/tosingle")
       /* public  String houseDetail(Model model){
            //通过hid查询房源的具体信息
            House house = houseService.findOneByHouseId("00a71c9f-96f7-4c3f-bcba-646c75b8c2c0");
            model.addAttribute("house",house);
            //查询与房源字同小区(如金域东郡)的房源
            List<House> sameVillage=houseService.findHousesByArea(house.getArea());
            model.addAttribute("sameVillage",sameVillage);
            List<House> goodList = houseService.findVIPHousesByHcountry(house.getHcountry());
            //查询与房源相同地域(如朝阳区)的房源价格前20
            System.out.println(goodList);
            model.addAttribute("goodList",goodList);
            return "/pages/single";
        }*/

        @RequestMapping("/tomap")
        public String toMap(Model model,String village){
    //            House house = houseService.findHouseByHid("44f105ee-aa27-47af-a10c-0a94a39dd49b");
            System.out.println(village);
            model.addAttribute("village",village);
            return "pages/map/mapHot";
        }

}
