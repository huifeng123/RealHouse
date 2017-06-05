package com.tedu.controller;

import com.tedu.pojo.House;
import com.tedu.service.HouseService;
import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

/**
 * Created by bigjsd on 2017/6/4.
 */
@Controller
    //用户注册房源信息表
public class CreateHouse {
    @Autowired
    private HouseService houseService;

    @RequestMapping("/toCreate")
    public String toCreate(House house){


        return "/pages/CreateHouse";

    }

}
