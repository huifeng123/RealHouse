package com.tedu.utils;

import com.tedu.pojo.House;
import com.tedu.service.HouseService;
import com.tedu.service.impl.HouseServiceImpl;

import java.util.*;

/**
 * 房屋工具类
 * Created by bigjsd on 2017/6/5.
 */
public class HouseUtils {
    public static HashSet<String> countrySet = new HashSet<String>();
    public static HashSet<String> hstructureSet = new HashSet<String>();
    public static HashSet<String> faceSet = new HashSet<String>();
    public static HashSet<String> hrepairSet = new HashSet<String>();
    public static Map<String,Set<String>> map=new HashMap<String,Set<String>>();


    /**
     * 为房屋新增，修改下拉列表准备数据
     * @return Map<String,Set<String>>
     */
    public static Map<String,Set<String>> getMap(){

        HouseService houseService=new HouseServiceImpl();
        List<House> houseList=houseService.findAll();
        for (House h:houseList) {
            countrySet.add(h.getHcountry());
            hstructureSet.add(h.getHstructure());
            faceSet.add(h.getFace());
            hrepairSet.add(h.getHrepair());
        }
        map.put("地区集合",countrySet);
        map.put("户型集合",countrySet);
        map.put("朝向集合",countrySet);
        map.put("装修情况集合",countrySet);
        return map;
    }







}
