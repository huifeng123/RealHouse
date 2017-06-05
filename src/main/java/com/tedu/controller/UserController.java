package com.tedu.controller;

import com.tedu.pojo.User;
import com.tedu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by LYJ on 2017/3/19.
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;


    @RequestMapping("/findAll")
    public String sayHello(Model model){
        List<User> userList = userService.findAll();
        model.addAttribute("userList",userList); 
        return "userList";
    }
    
    
    @RequestMapping("/toAddUser")
    public String toAddUser(){
    	//转向用户新增页面
    	return "addUser";
    }
    
    @RequestMapping("/addUser")
    public String addUser(User user){	
    	userService.addUser(user);
    	return "redirect:/findAll";
    }
    
    //转向用户修改页面
    @RequestMapping("/toUpdateUser")
    public String toUpdate(String uid,Model model){

        //根据用户Id查询数据库
    	User user = userService.findUserById(uid);
    	model.addAttribute("user", user);

    	//转向用户修改页面
    	return "/pages/myMessageUpdate";
    }
    
    @RequestMapping("/updateUser")
    public String update(HttpSession session,User user){
    	
    	userService.updateUser(user);
        session.setAttribute("session_user",user);
    	//重定向到用户列表页面
    	return "redirect:/toshowMyMessage";
    }
    
    @RequestMapping("/deleteUser")
    public String deleteUser(String id){
    	
    	userService.deleteUser(id);
    	return "redirect:/findAll";
    }
    
   
}
