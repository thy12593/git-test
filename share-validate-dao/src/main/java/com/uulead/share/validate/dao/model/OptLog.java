package com.uulead.share.validate.dao.model;

import java.util.Date;

public class OptLog {
    private Integer id;

    private String optType;

    private String optRet;

    private String isDbInvolve;

    private String optMsg;

    private Date optTime;
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOptType() {
        return optType;
    }

    public void setOptType(String optType) {
        this.optType = optType;
    }

    public String getOptRet() {
        return optRet;
    }

    public void setOptRet(String optRet) {
        this.optRet = optRet;
    }

    public String getIsDbInvolve() {
        return isDbInvolve;
    }

    public void setIsDbInvolve(String isDbInvolve) {
        this.isDbInvolve = isDbInvolve;
    }

    public String getOptMsg() {
        return optMsg;
    }

    public void setOptMsg(String optMsg) {
        this.optMsg = optMsg == null ? null : optMsg.trim();
    }

    public Date getOptTime() {
        return optTime;
    }

    public void setOptTime(Date optTime) {
        this.optTime = optTime;
    }
}