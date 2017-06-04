package com.tedu.controller;

import com.tedu.pojo.House;
import com.tedu.pojo.HouseInfo;
import com.tedu.service.HouseInfoService;

import com.tedu.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 房屋详情
 * Created by bigjsd on 2017/6/2.
 */
@Controller
@RequestMapping("/back")
public class BackHouseInfoController {
    @Autowired
    private HouseInfoService houseInfoService;
    @Autowired
    private HouseService houseService;

    /**
     * 根据房屋id查询详细信息
     * @param hid 房屋id
     * @return 详细信息对象
     */
    @RequestMapping("/houseInfo")
    public String findByHouseId(String hid,Model model){
        House house=houseService.findOneByHouseId(hid);
        model.addAttribute("house",house);
        return "/back/backHouseInfo";
    }
}
