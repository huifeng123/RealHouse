package com.tedu.service;

import com.tedu.pojo.House;
import com.tedu.pojo.HouseInfo;

import java.util.List;

/**
 * Created by bigjsd on 2017/6/2.
 */
public interface HouseService {




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

    public void updateHouse(House house);

    /**
     * 保存用户发布的房源信息
     * @param house 房屋对象
     */
    public void userSaveHouse(House house);




    /**
     * 前台房屋列表
     * @return
     */
    public List<House> findHouseAll(String uid);

    public void deleteHouseqian(String[] hids);

    public House findOne(String hid);
}