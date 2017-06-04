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
}
