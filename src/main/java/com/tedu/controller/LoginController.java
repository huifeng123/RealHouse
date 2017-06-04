package com.tedu.controller;

import com.tedu.exception.MsgException;
import com.tedu.pojo.User;
import com.tedu.service.UserService;
import com.tedu.utils.MD5Hash;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by LYJ on 2017/3/19.
 */
@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping("/toLogin")
    public String toLogin(){
        //跳转到登陆页面
        return "pages/login";
    }
    //登录验证
    @RequestMapping("/login.action")
    public String login(String uname,String upassword,Model model){

        if(StringUtils.isEmpty(uname)||StringUtils.isEmpty(upassword)){
            model.addAttribute("msg","用户名或密码不能为空");
            return "pages/login";
        }
        //形成用户名和密码的令牌
        UsernamePasswordToken token=new UsernamePasswordToken(uname,upassword);
        //创建Subject对象 就是一个user
        Subject subject= SecurityUtils.getSubject();
        try {
            subject.login(token);//表示用户要进行登录认证
            User user=(User) subject.getPrincipal();
            subject.getSession().setAttribute("session_user", user);
            if("刘玄德".equals(user.getUname())){
                return "redirect:/back/index";
            }
            return "redirect:/home";
        } catch (AuthenticationException e) {
            //登录失败转发到登陆页面并提示用户
            e.printStackTrace();
            model.addAttribute("msg", "用户名或密码错误");
            return "pages/login";
        }
    }
    @RequestMapping("/toRegister")
    public String toRegister(){
        //跳转到注册页面
        return "pages/register";
    }
    @RequestMapping("/register")
    public String UserRegister(User user,Model model){
        try {
            String md5Password= MD5Hash.getMd5HashPassword(user.getUpassword(),user.getUname());
            user.setUpassword(md5Password);
            System.out.println(user);
            userService.saveUser(user);
            return "redirect:/toLogin";
        } catch (MsgException e) {
            /**
             * 用户名存在不能注册，则返回到注册页面
             */
            model.addAttribute("msg",e.getMessage());
            System.out.println(user.getUname());
            return "pages/register";
        }
    }
    //跳转到主页面
   @RequestMapping("/home")
    public String toHome(){
        return "/index";
    }
    //跳转到退出页面
    @RequestMapping("/toLogOut")
    public String toLogOut(HttpSession httpSession){
        SecurityUtils.getSubject().logout();
        //httpSession.removeAttribute("session_user");
        return "redirect:/home";
    }
}
