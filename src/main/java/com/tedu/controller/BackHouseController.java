package com.tedu.controller;


import com.tedu.controller.BaseController;
import com.tedu.pojo.House;
import com.tedu.pojo.HouseInfo;
import com.tedu.pojo.User;
import com.tedu.service.HouseInfoService;
import com.tedu.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by bigjsd on 2017/6/2.
 */
@Controller
public class BackHouseController extends BaseController{
    @Autowired
    private HouseService houseService;
    @Autowired
    private HouseInfoService houseInfoService;
    @RequestMapping("/back/houseDelete")
    public String deleteHouse(@RequestParam(value = "hid",required = true)String[] hids){
        houseService.deleteHouse(hids);
        return "redirect:/back/backHouse";
    }
    /**
     * 查看所有房屋信息
     * @param model
     * @return
     */
    //@RequestMapping("/back/backHouse")
    /*public String toHouse(Model model, HttpSession httpSession){
        List<House> houseList = houseService.findAll();
        //为下拉列表准备数据，存入session中，已被新增，修改功能调用
        HashSet<String> countrySet = new HashSet<String>();
        HashSet<String> hstructureSet = new HashSet<String>();
        HashSet<String> faceSet = new HashSet<String>();
        HashSet<String> hrepairSet = new HashSet<String>();
        for (House h:houseList) {
            countrySet.add(h.getHcountry());
            hstructureSet.add(h.getHstructure());
            faceSet.add(h.getFace());
            hrepairSet.add(h.getHrepair());
        }
        httpSession.setAttribute("countrySet",countrySet);
        httpSession.setAttribute("hstructureSet",hstructureSet);
        httpSession.setAttribute("faceSet",faceSet);
        httpSession.setAttribute("hrepairSet",hrepairSet);

        model.addAttribute("houseList",houseList);
        return "/back/backHouse";
    }*/

    /**
     * 跳转到新增页面
     * @return
     */
    @RequestMapping("/back/houseCreate")
    public String toCreate(Model model ){

        return "/back/backHouseCreate";
    }

    /**
     * 新增房屋信息
     * @param house
     * @return
     */
    @RequestMapping("/back/save")
    public String saveHose(House house){
//        house.setHname("新增测试");
//        User user=new User();
//        user.setUid("333333");
//        house.setUserHouse(user);
//        HouseInfo houseInfo=new HouseInfo();
//        houseInfo.setHasbed(1);
//        house.setHouseInfo(houseInfo);
//       if(house!=null){
//           houseService.saveHouse(house);
//       }
       //System.out.println(house);
      houseService.saveHouse(house);
        return "redirect:/back/backHouse";
    }

    /**
     * 跳转到房屋信息修改页面
     * @return
     */
    @RequestMapping("/back/toHouseUpdate")
    public String toUpdate(String hid,Model model){
        House house=houseService.findOneByHouseId(hid);
        HouseInfo houseInfo=houseInfoService.findByHouseId(hid);
        model.addAttribute("house",house);
        model.addAttribute("houseInfo",houseInfo);
       return "/back/backHouseUpdate";
    }

    /**
     *
     */
    @RequestMapping("/back/updateHouseAndInfo")
    public String updateHouseAndInfo(House house,HouseInfo houseInfo,String hid){
        houseService.updateHouse(house,houseInfo,hid);
        return "redirect:/back/backHouse";
    }


}
