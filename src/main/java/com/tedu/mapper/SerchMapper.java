package com.tedu.mapper;

import com.tedu.pojo.House;

import java.util.List;

/**
 * Created by bigjsd on 2017/6/4.
 */
public interface SerchMapper {
    public List<House> findSerchAll(String serch);
}
