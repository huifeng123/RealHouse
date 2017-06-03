package com.tedu.pojo;


/**
 * Created by bigjsd on 2017/6/2.
 */
public class HouseInfo {
    private String itmeId; //房源特色编号
    private String hid; //房屋编号
    private Integer hasbed; // 床
    private Integer hastv; //  电视
    private Integer hasfridge; //  冰箱
    private Integer haswasher; //  洗衣机
    private Integer haskt; //  空调
    private Integer hasnq; //  暖气
    private Integer hasnet; //  宽带
    private Integer hasfurniture; // 家具
    private Integer hasgas; //  天然气
    private Integer hasrsq; //  热水器

    public String getItmeId() {
        return itmeId;
    }
    public void setItmeId(String itmeId) {
        this.itmeId = itmeId;
    }
    public String getHid() {
        return hid;
    }
    public void setHid(String hid) {
        this.hid = hid;
    }
    public Integer getHasbed() {
        return hasbed;
    }
    public void setHasbed(Integer hasbed) {
        this.hasbed = hasbed;
    }
    public Integer getHastv() {
        return hastv;
    }
    public void setHastv(Integer hastv) {
        this.hastv = hastv;
    }
    public Integer getHasfridge() {
        return hasfridge;
    }
    public void setHasfridge(Integer hasfridge) {
        this.hasfridge = hasfridge;
    }
    public Integer getHaswasher() {
        return haswasher;
    }
    public void setHaswasher(Integer haswasher) {
        this.haswasher = haswasher;
    }
    public Integer getHaskt() {
        return haskt;
    }
    public void setHaskt(Integer haskt) {
        this.haskt = haskt;
    }
    public Integer getHasnq() {
        return hasnq;
    }
    public void setHasnq(Integer hasnq) {
        this.hasnq = hasnq;
    }
    public Integer getHasnet() {
        return hasnet;
    }
    public void setHasnet(Integer hasnet) {
        this.hasnet = hasnet;
    }
    public Integer getHasfurniture() {
        return hasfurniture;
    }
    public void setHasfurniture(Integer hasfurniture) {
        this.hasfurniture = hasfurniture;
    }
    public Integer getHasgas() {
        return hasgas;
    }
    public void setHasgas(Integer hasgas) {
        this.hasgas = hasgas;
    }
    public Integer getHasrsq() {
        return hasrsq;
    }
    public void setHasrsq(Integer hasrsq) {
        this.hasrsq = hasrsq;
    }

    @Override
    public String toString() {
        return "HouseInfo{" +
                "itmeId='" + itmeId + '\'' +
                ", hid='" + hid + '\'' +
                ", hasbed=" + hasbed +
                ", hastv=" + hastv +
                ", hasfridge=" + hasfridge +
                ", haswasher=" + haswasher +
                ", haskt=" + haskt +
                ", hasnq=" + hasnq +
                ", hasnet=" + hasnet +
                ", hasfurniture=" + hasfurniture +
                ", hasgas=" + hasgas +
                ", hasrsq=" + hasrsq +
                '}';
    }
}

