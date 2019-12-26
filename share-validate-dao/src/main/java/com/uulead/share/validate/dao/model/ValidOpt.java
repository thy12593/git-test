package com.uulead.share.validate.dao.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.alibaba.fastjson.annotation.JSONField;

@Table(name="valid_opt")
public class ValidOpt {
	
	@Override
	public String toString() {
		return "ValidOpt [id=" + id + ", ruleId=" + ruleId + ", validRet=" + validRet + ", isTimeOut=" + isTimeOut
				+ ", isErrorAccur=" + isErrorAccur + ", validTime=" + validTime + ", validMsg=" + validMsg
				+ ", createTime=" + createTime + "]";
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@JSONField(ordinal=1)
    private Long id;
	
	@JSONField(ordinal=2)
	@Column(name="rule_id")
    private Integer ruleId;
	
	@JSONField(ordinal=3)
	@Column(name="valid_ret")
    private Boolean validRet;

	@JSONField(ordinal=4)
	@Column(name="is_time_out")
    private Boolean isTimeOut;

	@JSONField(ordinal=5)
	@Column(name="is_error_accur")
    private Boolean isErrorAccur;
	
	@JSONField(ordinal=6)
	private Boolean isUpdateAnomaly;
	
	@JSONField(ordinal=7)
	@Column(name="valid_time")
    private Date validTime;

	@JSONField(ordinal=8)
	@Column(name="valid_msg")
    private String validMsg;

	@JSONField(ordinal=9)
	@Column(name="create_time")
    private Date createTime;

	
	
	
    public Boolean getIsUpdateAnomaly() {
		return isUpdateAnomaly;
	}

	public void setIsUpdateAnomaly(Boolean isUpdateAnomaly) {
		this.isUpdateAnomaly = isUpdateAnomaly;
	}

	public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getRuleId() {
        return ruleId;
    }

    public void setRuleId(Integer ruleId) {
        this.ruleId = ruleId;
    }

    public Boolean getValidRet() {
        return validRet;
    }

    public void setValidRet(Boolean validRet) {
        this.validRet = validRet;
    }

    public Boolean getIsTimeOut() {
        return isTimeOut;
    }

    public void setIsTimeOut(Boolean isTimeOut) {
        this.isTimeOut = isTimeOut;
    }

    public Boolean getIsErrorAccur() {
        return isErrorAccur;
    }

    public void setIsErrorAccur(Boolean isErrorAccur) {
        this.isErrorAccur = isErrorAccur;
    }

    public Date getValidTime() {
        return validTime;
    }

    public void setValidTime(Date validTime) {
        this.validTime = validTime;
    }

    public String getValidMsg() {
        return validMsg;
    }

    public void setValidMsg(String validMsg) {
        this.validMsg = validMsg == null ? null : validMsg.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}