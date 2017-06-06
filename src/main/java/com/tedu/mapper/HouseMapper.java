package com.tedu.mapper;

import com.tedu.pojo.House;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by bigjsd on 2017/6/2.
 */
public interface HouseMapper {


    /**
     * 根据房屋所在区域查询周围房源
     * @param area 房屋地区
     * @return 同地区房源
     */
    public List<House> findHousesByArea(String area);

    /**
     * 查询徐偶有房屋详情
     * @return
     */
    public List<House> findAll();

    /**
     * 新增房屋详情信息
     * @param house
     */
    public void saveHouse(House house);

    /**
     * 根据房屋id查询信息
     * @param hid
     * @return
     */
    public House findOneByHid(String hid);

    /**
     * 根据用户名查询用户id
     * @param uuser 用户名
     * @return
     */
    public String findUidByUuser(String uuser);

    public void deleteHouse(String hid);
    public void updateHouse(House house);







    public List<House> findHouseAll(String uid);

    public void deleteHouseqian(String hid);


    public House findOne(String hid);


}