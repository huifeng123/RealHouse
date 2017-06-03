package com.tedu.pojo;

import java.util.Date;

/**
 * Created by bigjsd on 2017/6/2.
 */
public class House extends BaseEntity{
    private HouseInfo houseInfo; //房屋详情对象
    private HouseArea houseArea; //房屋区域表对象
    private User userHouse; //房东房东
    private String hid;//房屋编号
    private String hname;//房屋名称
    private String hcountry;//地域
    private String village;//小区
    private String area;//地区
    private String hstructure;//户型
    private String face;//朝向
    private String harea;//房屋面积
    private String hfloor;//楼层
    private String lend;//出租方式
    private String uid;//用户编号
    private String price;//房屋价格
    private String haddress;//房屋地址
    private String hrepair;//装修情况
    private String validate;//有效期
    private Date publishtime;//发布日期
    private String contact;//联系人
    private String tel;//联系电话
    private String remarks;//说明
    private Integer state;//状态
    private String think;//评价
    private String imgurl;//图片

    public HouseInfo getHouseInfo() {
        return houseInfo;
    }

    public void setHouseInfo(HouseInfo houseInfo) {
        this.houseInfo = houseInfo;
    }

    public HouseArea getHouseArea() {
        return houseArea;
    }

    public void setHouseArea(HouseArea houseArea) {
        this.houseArea = houseArea;
    }

    public User getUserHouse() {
        return userHouse;
    }

    public void setUserHouse(User userHouse) {
        this.userHouse = userHouse;
    }

    public String getHid() {
        return hid;
    }

    public void setHid(String hid) {
        this.hid = hid;
    }

    public String getHname() {
        return hname;
    }

    public void setHname(String hname) {
        this.hname = hname;
    }

    public String getHcountry() {
        return hcountry;
    }

    public void setHcountry(String hcountry) {
        this.hcountry = hcountry;
    }

    public String getVillage() {
        return village;
    }

    public void setVillage(String village) {
        this.village = village;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getHstructure() {
        return hstructure;
    }

    public void setHstructure(String hstructure) {
        this.hstructure = hstructure;
    }

    public String getFace() {
        return face;
    }

    public void setFace(String face) {
        this.face = face;
    }

    public String getHarea() {
        return harea;
    }

    public void setHarea(String harea) {
        this.harea = harea;
    }

    public String getHfloor() {
        return hfloor;
    }

    public void setHfloor(String hfloor) {
        this.hfloor = hfloor;
    }

    public String getLend() {
        return lend;
    }

    public void setLend(String lend) {
        this.lend = lend;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getHaddress() {
        return haddress;
    }

    public void setHaddress(String haddress) {
        this.haddress = haddress;
    }

    public String getHrepair() {
        return hrepair;
    }

    public void setHrepair(String hrepair) {
        this.hrepair = hrepair;
    }

    public String getValidate() {
        return validate;
    }

    public void setValidate(String validate) {
        this.validate = validate;
    }

    public Date getPublishtime() {
        return publishtime;
    }

    public void setPublishtime(Date publishtime) {
        this.publishtime = publishtime;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getThink() {
        return think;
    }

    public void setThink(String think) {
        this.think = think;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    @Override
    public String toString() {
        return "House{" +
                "houseInfo=" + houseInfo +
                ", houseArea=" + houseArea +
                ", userHouse=" + userHouse +
                ", hid='" + hid + '\'' +
                ", hname='" + hname + '\'' +
                ", hcountry='" + hcountry + '\'' +
                ", village='" + village + '\'' +
                ", area='" + area + '\'' +
                ", hstructure='" + hstructure + '\'' +
                ", face='" + face + '\'' +
                ", harea='" + harea + '\'' +
                ", hfloor='" + hfloor + '\'' +
                ", lend='" + lend + '\'' +
                ", uid='" + uid + '\'' +
                ", price='" + price + '\'' +
                ", haddress='" + haddress + '\'' +
                ", hrepair='" + hrepair + '\'' +
                ", validate='" + validate + '\'' +
                ", publishtime=" + publishtime +
                ", contact='" + contact + '\'' +
                ", tel='" + tel + '\'' +
                ", remarks='" + remarks + '\'' +
                ", state=" + state +
                ", think='" + think + '\'' +
                ", imgurl='" + imgurl + '\'' +
                '}';
    }
}


