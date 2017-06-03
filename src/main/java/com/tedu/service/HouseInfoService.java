package com.tedu.service;

import com.tedu.pojo.HouseInfo;

import java.util.List;

/**
 * Created by bigjsd on 2017/6/2.
 */
public interface HouseInfoService {
    /**
     * 根据房屋ID查询详情
     * @param hid 房屋id
     * @return 详情对象
     */
    public HouseInfo findByHouseId(String hid);
}
