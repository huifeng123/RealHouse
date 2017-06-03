package com.tedu.pojo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

/**
 * Created by bigjsd on 2017/6/2.
 */
public class Notice extends BaseEntity{
    private  String id;
    private String name;
    private String notice;
    private Date datatime;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNotice() {
        return notice;
    }

    public void setNotice(String notice) {
        this.notice = notice;
    }
    public Date getDatatime() {
        return datatime;
    }
    public void setDatatime(Date datatime) {
        this.datatime = datatime;
    }


    @Override
    public String toString() {
        return "Notice{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", notice='" + notice + '\'' +
                '}';
    }
}
