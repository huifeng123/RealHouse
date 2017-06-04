package com.tedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by bigjsd on 2017/6/4.
 */
@Controller
public class HeadController {
    @RequestMapping("/about")
    public String toAbout(){
        return "pages/about";
    }
    @RequestMapping("/blog")
    public String toBlog(){
        return "pages/blog";
    }
    @RequestMapping("/terms")
    public String toTerms(){
        return "/pages/terms";
    }
    @RequestMapping("/privacy")
    public String toPrivacy(){
        return "pages/privacy";
    }
    @RequestMapping("/contact")
    public String toContact(){
        return "pages/contact";
    }

}
