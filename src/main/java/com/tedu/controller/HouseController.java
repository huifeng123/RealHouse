package com.tedu.controller;

import com.tedu.pojo.House;
import com.tedu.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.RequestScope;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by leo on 2017/6/2.
 */
@Controller
public class HouseController {
        @Autowired
        private HouseService houseService;
        @RequestMapping("/tosingle")
        public  String houseDetail(Model model,String hid){
            //通过hid查询房源的具体信息
            House house = houseService.findOneByHouseId(hid);
//            House house = houseService.findOneByHouseId("01dc4f46-711b-4f6b-a693-b37a008b0eb4");
            //House house = houseService.findOneByHouseId("01dc4f46-711b-4f6b-a693-b37a008b0eb4");
            model.addAttribute("house",house);
            //查询与房源字同小区(如金域东郡)的房源
            List<House> sameVillage = houseService.findHousesByArea(house.getArea());
            model.addAttribute("sameVillage",sameVillage);
            List<House> goodList = houseService.findVIPHousesByHcountry(house.getHcountry());
            //查询与房源相同地域(如朝阳区)的房源价格前20
          //  System.out.println(house.getHouseInfo());
            model.addAttribute("goodList",goodList);
            return "/pages/single";
        }

        @RequestMapping("/tomap")
        public String toMap(Model model,String village){
    //            House house = houseService.findHouseByHid("44f105ee-aa27-47af-a10c-0a94a39dd49b");
           // System.out.println(village);
            model.addAttribute("village",village);
            return "pages/map/mapHot";
        }



        //跳转到租赁页面
         @RequestMapping("toBuy")
        public String toBuy(Model model){
             List<House> houseList = houseService.findAll();

             //System.out.println(houseList);
             model.addAttribute("houseList",houseList);
             model.addAttribute("test","test");
             List<House> goodList = houseService.findVIPHousesByHcountry("房山");
           //  System.out.println(goodList);
             model.addAttribute("goodList",goodList);
             return "forward:/WEB-INF/pages/buy.jsp";
        }
        @RequestMapping("toSearch")
        public String toSearch(Model model,String city,String hcountry,String hstructure ,String minPrice,String maxPrice,String minArea,String maxArea){
            Double priceMax = Double.parseDouble(maxPrice);
            Double priceMin = Double.parseDouble(minPrice);
            Double areaMin = Double.parseDouble(maxArea);
            Double areaMax = Double.parseDouble(minArea);
            
            List<House> houseList = houseService.findHousesByInfo(hcountry,hstructure,minPrice,maxPrice,minArea,maxArea);
            model.addAttribute("houseList",houseList);

            return "/pages/buy";
        }




}



























