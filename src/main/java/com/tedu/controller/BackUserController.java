package com.tedu.controller;

import com.tedu.pojo.User;
import com.tedu.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.UUID;

/**
 * Created by bigjsd on 2017/6/2.
 */
@Controller
public class BackUserController {
    @Autowired
    private UserService userService;

    //跳转到用户显示页面
    @RequestMapping("/back/userInfo")
    public String backUserInfo(String uid, Model model){
        User user=userService.findUserById(uid);
        model.addAttribute("user",user);
        return "back/backUserInfo";
    }
    //跳转到用户添加页面
    @RequestMapping("/back/toAddUser")
    public String toBackUserAdd(){
        return "back/backUserAdd";
    }
    //进行用户添加
    @RequestMapping("/back/userAdd")
    public String backUserAdd(User user){
        //System.out.println(user+"+++++++++++");
        userService.addUser(user);
        System.out.print("***************");
        return "redirect:/back/backUser";
    }
    //添加用户更新页面
    @RequestMapping("/back/toUserUpdate")
    public String  toBackUserUpdate(String uid,Model model){
        User user=userService.findUserById(uid);
        model.addAttribute("user",user);
        return "back/backUserUpdate";
    }
    //更新用户
    @RequestMapping("/back/userUpdate")
    public String backUserUpdate(User user){
        userService.updateUser(user);
        return "redirect:/back/backUser";
    }
    //删除用户
    @RequestMapping("/back/UserDelete")
    public String backUserDelete(@RequestParam("uid") String[] uids){
        userService.deleteUsers(uids);
        return "redirect:/back/backUser";
    }

}
