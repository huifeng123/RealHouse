package com.tedu.service.impl;

import com.tedu.mapper.HouseInfoMapper;
import com.tedu.pojo.HouseInfo;
import com.tedu.service.HouseInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by bigjsd on 2017/6/2.
 */
@Service
public class HouseInfoServiceImpl implements HouseInfoService{
    @Autowired
    private HouseInfoMapper houseInfoMapper;

    public HouseInfo findByHouseId(String hid){
        return houseInfoMapper.findByHouseId(hid);
    }


}
