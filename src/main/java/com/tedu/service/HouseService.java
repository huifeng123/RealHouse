package com.tedu.service;

import com.tedu.pojo.House;
import com.tedu.pojo.HouseInfo;

import java.util.List;

/**
 * Created by bigjsd on 2017/6/2.
 */
public interface HouseService {


    public void updateHouse(House house, HouseInfo houseInfo, String hid);

    public List<House> findHousesByArea(String area);
    /**
     * 查看所有房屋信息
     */
    public List<House> findAll();

    /**
     * 保存用户信息
     * @param house
     */
    public void saveHouse(House house);

    /**
     * 根据房屋id查询信息
     * @param hid
     * @return
     */
    public House findOneByHouseId(String hid);

    public void deleteHouse(String[] hids);

    /**
     * 通过房屋所在区域(hcountry)查询精品房源(暂时按照价格高低分配)
     * @param hcountry 房屋所在区域
     * @return 精品房源
     */
    public List<House> findVIPHousesByHcountry(String hcountry);


    List<House> findHousesByInfo(String hcountry, String hstructure, String minPrice, String maxPrice, String minArea, String maxArea);
    /**
     * 前台房屋列表
     * @return
     */
    public List<House> findHouseAll(String uid);

    public void deleteHouseqian(String[] hids);

    public House findOne(String hid);
}
