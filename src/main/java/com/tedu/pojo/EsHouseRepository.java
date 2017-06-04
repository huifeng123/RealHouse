package com.tedu.pojo;

import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Ryan Noodles on 2017/6/5.
 */
@Component("esHouseRepository")
public interface EsHouseRepository extends ElasticsearchRepository<House, String> {

    House findHouseList(String village);
}
