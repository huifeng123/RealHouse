package com.tedu.controller;

import com.tedu.pojo.House;
import com.tedu.pojo.User;
import com.tedu.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.annotation.RequestScope;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashSet;
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
            return "pages/map/mapRun";
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

            List<House> goodList = houseService.findVIPHousesByHcountry("房山");
            //  System.out.println(goodList);
            model.addAttribute("goodList",goodList);

            return "/pages/buy";
        }
        @RequestMapping("/toHotArea")
        public String toHotArea(String hcountry,Model model){
            List<House> houseList = houseService.findVIPHousesByHcountry(hcountry);
            model.addAttribute("houseList",houseList);
            List<House> goodList = houseService.findVIPHousesByHcountry("房山");
            //  System.out.println(goodList);
            model.addAttribute("goodList",goodList);
            return "/pages/buy";
        }

    /**
     * 用户修改房屋信息
     *
     * @param hid   房屋id
     * @param model
     * @return
     */
    @RequestMapping("/pages/toUpdateHouse")
    public String toUpdateHouse(String hid, Model model) {
        //自查id 测试用 整合时注解掉
        //hid="ff526147-a611-43a6-be4f-61bb30dc905b";
        House house = houseService.findOneByHouseId(hid);
        //System.out.println(house);
        //为下来列表准备数据
        List<House> houseList = houseService.findAll();
        HashSet<String> countrySet = new HashSet<String>();
        HashSet<String> hstructureSet = new HashSet<String>();
        HashSet<String> faceSet = new HashSet<String>();
        HashSet<String> hrepairSet = new HashSet<String>();
        for (House h : houseList) {
            countrySet.add(h.getHcountry());
            hstructureSet.add(h.getHstructure());
            faceSet.add(h.getFace());
            hrepairSet.add(h.getHrepair());
        }
        model.addAttribute("countrySet", countrySet);
        model.addAttribute("hstructureSet", hstructureSet);
        model.addAttribute("faceSet", faceSet);
        model.addAttribute("hrepairSet", hrepairSet);
        model.addAttribute("house", house);
        return "pages/updateHouse";
    }
    /**
     * 跳转到发布房源信息页面
     *
     * @param uid 用户id
     * @return
     */
    @RequestMapping("/pages/userCreateHouse")
    public String userCreateHouse(String uid, Model model) {
        //自造uid 测试代码用，整合时注释掉
        //uid="a8b38a83-e9ae-4200-9a17-e3924616a979";
        //为下来列表准备内容
        List<House> houseList = houseService.findAll();
        HashSet<String> countrySet = new HashSet<String>();
        HashSet<String> hstructureSet = new HashSet<String>();
        HashSet<String> faceSet = new HashSet<String>();
        HashSet<String> hrepairSet = new HashSet<String>();
        for (House h : houseList) {
            countrySet.add(h.getHcountry());
            hstructureSet.add(h.getHstructure());
            faceSet.add(h.getFace());
            hrepairSet.add(h.getHrepair());
        }
        model.addAttribute("countrySet", countrySet);
        model.addAttribute("hstructureSet", hstructureSet);
        model.addAttribute("faceSet", faceSet);
        model.addAttribute("hrepairSet", hrepairSet);

        //设置房源状态为1（待出租）
        Integer state = 1;
        model.addAttribute("uid", uid);
        model.addAttribute("state", state);
        return "/pages/createHouse";
    }
    //前台房屋列表
    @RequestMapping("/pages/houseList")
    public String tohouseList(String uid, Model model) {
        uid = "91440114";
        List<House> houseList = houseService.findHouseAll(uid);
        //System.out.print(uid);
        model.addAttribute("houseList", houseList);
        return "/pages/HouseList";
    }

    //前台房屋删除
    @RequestMapping("/pages/houseqianDelete")
    public String deleteHouseqian(@RequestParam(value = "hid", required = true) String[] hids, Model model, HttpSession session) {
        houseService.deleteHouseqian(hids);
        String uid = ((User)session.getAttribute("session_user")).getUid();

        model.addAttribute("uid",uid);
        return "forward:/pages/houseList";
    }

    //前台房屋查看
    @RequestMapping("/pages/toView")
    public String toview(@RequestParam(required = true) String hid, Model model) {

        House house = houseService.findOne(hid);
        model.addAttribute("house", house);
        //转向房屋的查看页面
        return "/pages/viewHouse";

    }



}



























