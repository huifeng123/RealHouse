package com.tedu.service.impl;

import com.tedu.pojo.EsHouseRepository;
import com.tedu.pojo.House;
import com.tedu.service.EsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Ryan Noodles on 2017/6/5.
 */
@Service("esServiceImpl")
public class EsServiceImpl implements EsService{

    @Autowired
    private EsHouseRepository esHouseRepository;
    @Override
    public House findHouseList(String village) {
        return esHouseRepository.findHouseList(village);
    }
}
