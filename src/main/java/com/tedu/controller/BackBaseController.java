package com.tedu.controller;

import com.tedu.pojo.House;
import com.tedu.pojo.Notice;
import com.tedu.pojo.User;
import com.tedu.service.HouseService;
import com.tedu.service.NoticeService;
import com.tedu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.HashSet;
import java.util.List;

/**
 * Created by bigjsd on 2017/6/2.
 */
@Controller
public class BackBaseController {
    @Autowired
    private UserService userService;
    @Autowired
    private HouseService houseService;
    @Autowired
    private NoticeService noticeService;
    @RequestMapping("/back/backIndex")
    public String toBackIndex(){
        return"/back/backIndex";
    }
    @RequestMapping("/back/backUser")
    public String toBackUser(Model model){
        List<User> userList=userService.findAll();
        model.addAttribute("userList",userList);
        return"/back/backUser";
    }
   @RequestMapping("/back/backHouse")
    public String toHouse(Model model, HttpSession httpSession){
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
    }
    @RequestMapping("/back/backRole")
    public String toBackRole(Model model){
        List<User> userList=userService.findAll();
        model.addAttribute("userList",userList);
        return"/back/backRole";
    }
    @RequestMapping("/back/backNotice")
    public String toBackNotice(Model model){
        List<Notice> noticeList = noticeService.findNoticeAll();
        model.addAttribute("noticeList",noticeList);
        //跳转到公共页面
        return"/back/backNotice";
    }
}
