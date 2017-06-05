package com.test;

import com.tedu.pojo.House;
import com.tedu.service.EsService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.elasticsearch.core.ElasticsearchTemplate;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by Ryan Noodles on 2017/6/5.
 */
//@RunWith(SpringJUnit4ClassRunner.class)
//@SpringApplicationConfiguration(classes = EsdemoApplication.class)
//public class EsdemoApplicationTests {
//
//    @Autowired
//    private EsService esService;
//
//    @Autowired
//    private ElasticsearchTemplate elasticsearchTemplate;
//
//    @Test //tag必须不是nested的
//    public void testFindByTagsName() throws Exception {
//        House house = new House();
//        Tag tag = new Tag();
//        tag.setId("1");
//        tag.setName("tech");
//        Tag tag2 = new Tag();
//        tag2.setId("2");
//        tag2.setName("elasticsearch");
//
//        Post post = new Post();
//        post.setId("1");
//        post.setTitle("Bigining with spring boot application and elasticsearch");
//        post.setRating(9.4);
//        post.setTags(Arrays.asList(tag, tag2));
//        esService.save(post);
//
//
//
//        Post post2 = new Post();
//        post2.setId("1");
//        post2.setTitle("Bigining with spring boot application");
//        post2.setTags(Arrays.asList(tag));
//        post2.setRating(9.6);
//        postService.save(post2);
//
//        Page<Post> posts  = postService.findByTagsName("tech", new PageRequest(0,10));
//        Page<Post> posts2  = postService.findByTagsName("tech", new PageRequest(0,10));
//        Page<Post> posts3  = postService.findByTagsName("maz", new PageRequest(0,10));
//
//
//        assertThat(posts.getTotalElements(), is(1L));
//        assertThat(posts2.getTotalElements(), is(1L));
//        assertThat(posts3.getTotalElements(), is(0L));
//    }

