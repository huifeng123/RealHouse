package com.tedu.service;

import com.tedu.pojo.House;

import java.util.List;


/**
 * Created by Ryan Noodles on 2017/6/5.
 */
public interface EsService {
    House findByHid(String hid);
    List<House> findByVillage(String village);
}
