package com.tedu.service.impl;

import com.tedu.mapper.SerchMapper;
import com.tedu.pojo.House;
import com.tedu.service.SerchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by bigjsd on 2017/6/4.
 */
@Service
public class SerchServiceImpl implements SerchService{
    @Autowired
    private SerchMapper serchMapper;

    @Override
    public List<House> findSerchAll(String serch) {
        return serchMapper.findSerchAll(serch);
    }
}
