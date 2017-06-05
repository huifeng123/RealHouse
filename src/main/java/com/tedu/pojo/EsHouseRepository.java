package com.tedu.pojo;

import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Ryan Noodles on 2017/6/5.
 */
@Component()
public interface EsHouseRepository extends ElasticsearchRepository<House, String> {

    public House findByHid(String hid);
    public List<House> findByVillage(String village);
}
