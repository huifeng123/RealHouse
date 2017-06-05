package com.tedu.service.impl;

        import com.tedu.mapper.HouseInfoMapper;
        import com.tedu.mapper.HouseMapper;
        import com.tedu.pojo.House;
        import com.tedu.pojo.HouseInfo;
        import com.tedu.pojo.User;
        import com.tedu.service.HouseService;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.stereotype.Service;
        import org.springframework.transaction.annotation.Propagation;
        import org.springframework.transaction.annotation.Transactional;

        import javax.annotation.Resource;
        import java.util.List;
        import java.util.UUID;

/**
 * Created by bigjsd on 2017/6/2.
 */
@Service
public class HouseServiceImpl implements HouseService {
    @Autowired
    private HouseMapper houseMapper;
    @Autowired
    private HouseInfoMapper houseInfoMapper;

    @Override
    public List<House> findAll() {
        return houseMapper.findAll();

    }



    @Override
    public List<House> findHousesByArea(String area) {
        return houseMapper.findHousesByArea(area);
    }
    /**
     * 新增房屋信息
     * @param house
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void saveHouse(House house) {
        //准备房屋id
        String hid=UUID.randomUUID().toString();
        //补充房屋id
        house.setHid(hid);
        //提取房屋详情对象
        HouseInfo houseInfo=house.getHouseInfo();

        if (houseInfo!=null){
            //补充房屋详情表id
            houseInfo.setItmeId(UUID.randomUUID().toString());
            //补充房屋详情表中的uid字段
            houseInfo.setHid(hid);
        }
        //提取房东对象
        User userHouse=house.getUserHouse();
        //获取房东用户名
        String uuser=userHouse.getUuser();
        //根据用户名查询用户id
        String uid=houseMapper.findUidByUuser(uuser);
        //设置用户id到房东对象中
        userHouse.setUid(uid);
        // 保存用户表
        houseMapper.saveHouse(house);
        //保存用户详情表
        houseInfoMapper.saveHouseInfo(houseInfo);
    }

    @Override
    public House findOneByHouseId(String hid) {
        return houseMapper.findOneByHid(hid);
    }

    public void deleteHouse(String[] hids){
        for(String hid:hids){
            houseMapper.deleteHouse(hid);
        }
        for(String hid:hids){
            houseInfoMapper.deleteHouseInfo(hid);
        }
    }

    @Override
    public List<House> findVIPHousesByHcountry(String hcountry) {
        return houseMapper.findVIPHouseByHcountry(hcountry
        );
    }

    @Override
    public List<House> findHouses(String city, String hcountry, String hstructure, String minPrice, String maxPrice, String minArea, String maxArea) {
        return houseMapper.findHouses(hcountry,hstructure,minPrice,maxPrice,minArea,maxArea);
    }


    /**
     * 新增房屋信息
     * @param house
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void updateHouse(House house,HouseInfo houseInfo,String uid){
        houseMapper.updateHouse(house,uid);
        houseInfoMapper.updateHouseInfo(houseInfo,uid);
    }

}
