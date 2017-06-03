package com.tedu.controller;

import com.tedu.pojo.User;
import com.tedu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by bigjsd on 2017/6/3.
 */
@Controller
public class BackRoleController {
    @Autowired
    private UserService userService;

    @RequestMapping("/back/roleOne")
    public String toRoleOne(Model model){
        Integer upower=1;
        List<User> userList=userService.findUserByRole(upower);
        model.addAttribute("userList",userList);
        return "/back/backRole";
    }
    @RequestMapping("/back/roleZero")
    public String toRoleZero(Model model){
        Integer upower=0;
        List<User> userList=userService.findUserByRole(upower);
        model.addAttribute("userList",userList);
        return "/back/backRole";
    }
}
