package com.qunar.hotel.ugc.entity;

import java.util.Date;

/**
 * Created by vicky.han on 14-8-18.
 */
public class Comments {
    private Integer id;
    private String customer;
    private Integer status;
    private Date cretime;
    private Integer type;
    private Integer rid;
    private Integer pid;
    private Integer ext1;
    private String ext2;
    private String ext3;
    private String ext4;
    private String cityurl;
    private Integer needsync;
    private String obj_seq;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCustomer() {
        return customer;
    }

    public void setCustomer(String customer) {
        this.customer = customer;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getCretime() {
        return cretime;
    }

    public void setCretime(Date cretime) {
        this.cretime = cretime;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getExt1() {
        return ext1;
    }

    public void setExt1(Integer ext1) {
        this.ext1 = ext1;
    }

    public String getExt2() {
        return ext2;
    }

    public void setExt2(String ext2) {
        this.ext2 = ext2;
    }

    public String getExt3() {
        return ext3;
    }

    public void setExt3(String ext3) {
        this.ext3 = ext3;
    }

    public String getExt4() {
        return ext4;
    }

    public void setExt4(String ext4) {
        this.ext4 = ext4;
    }

    public String getCityurl() {
        return cityurl;
    }

    public void setCityurl(String cityurl) {
        this.cityurl = cityurl;
    }

    public Integer getNeedsync() {
        return needsync;
    }

    public void setNeedsync(Integer needsync) {
        this.needsync = needsync;
    }

    public String getObj_seq() {
        return obj_seq;
    }

    public void setObj_seq(String obj_seq) {
        this.obj_seq = obj_seq;
    }
}
