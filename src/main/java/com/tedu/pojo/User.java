package com.tedu.pojo;

/**
 * Created by bigjsd on 2017/6/2.
 *
 */
public class User extends BaseEntity{
    private String uid;   //用户id
    private String uname;  //用户昵称
    private String urname;  //用户真实姓名
    private String uemail;  //邮箱
    private String uuser;   //登录用户名
    private String upassword;   //登录密码
    private String sex;    //性别
    private String tel;    //电话
    private String post;   //邮编
    private String uaddress;  //地址
    private String qq;    //qq
    private Integer upower;   //用户类型  0：租户   1：房东


    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUrname() {
        return urname;
    }

    public void setUrname(String urname) {
        this.urname = urname;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public String getUuser() {
        return uuser;
    }

    public void setUuser(String uuser) {
        this.uuser = uuser;
    }

    public String getUpassword() {
        return upassword;
    }

    public void setUpassword(String upassword) {
        this.upassword = upassword;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public String getUaddress() {
        return uaddress;
    }

    public void setUaddress(String uaddress) {
        this.uaddress = uaddress;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public Integer getUpower() {
        return upower;
    }

    public void setUpower(Integer upower) {
        this.upower = upower;
    }

    @Override
    public String toString() {
        return "aa [uid=" + uid + ", uname=" + uname + ", urname=" + urname
                + ", uemail=" + uemail + ", uuser=" + uuser + ", upassword="
                + upassword + ", sex=" + sex + ", tel=" + tel + ", post="
                + post + ", uaddress=" + uaddress + ", qq=" + qq + ", upower="
                + upower + "]";
    }
}
