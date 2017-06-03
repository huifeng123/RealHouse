package com.tedu.service.impl;

import com.tedu.mapper.NoticeMapper;
import com.tedu.pojo.Notice;
import com.tedu.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by bigjsd on 2017/6/2.
 */
@Service
public class NoticeServiceImpl implements NoticeService{
    @Autowired
    private NoticeMapper noticeMapper;


    @Override
    public List<Notice> findNoticeAll() {
        return noticeMapper.findNoticeAll();
    }

    @Override
    public void deleteNotice(String[] ids) {
        for(String id:ids){
            noticeMapper.deleteNotice(id);
        }

    }

    @Override
    public Notice findOne(String id) {
        return noticeMapper.findOne(id);
    }

    @Override
    public void updateNotice(Notice notice) {
        notice.setDatatime(new Date());
        noticeMapper.updateNotice(notice);
    }

    @Override
    public void saveNotice(Notice notice) {
        notice.setId(UUID.randomUUID().toString());
        notice.setDatatime(new Date());
        noticeMapper.saveNotice(notice);
    }
}
