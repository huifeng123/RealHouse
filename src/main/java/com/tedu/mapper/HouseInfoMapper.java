package com.tedu.mapper;

import com.tedu.pojo.HouseInfo;

import java.util.List;

/**
 * Created by bigjsd on 2017/6/2.
 */
public interface HouseInfoMapper {
    public HouseInfo findByHouseId(String hid);

    /**
     * 新增房屋详情
     * @param houseInfo
     */
    public void saveHouseInfo(HouseInfo houseInfo);
    public void deleteHouseInfo(String hid);
    public void updateHouseInfo(HouseInfo houseInfo);

    public void deleteHouseInfoqian(String hid);
}
