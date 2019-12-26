package com.uulead.share.validate.dao.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.alibaba.fastjson.annotation.JSONField;

@Table(name="valid_rule")
public class ValidRule {
	
	@Override
	public String toString() {
		return "ValidRule [id=" + id + ", depId=" + depId + ", interfId=" + interfId + ", timeSpent=" + timeSpent
				+ ", mailReceiver=" + mailReceiver + ", mailTitle=" + mailTitle + ", remark=" + remark + ", type="
				+ type + ", status=" + status + ", optType=" + optType + ", timeOut=" + timeOut + "]";
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@JSONField(ordinal=1)
	private Integer id;
	
	@Column(name="dep_id")
	@JSONField(ordinal=2)
	private Integer depId;
	
	@Column(name="interf_id")
	@JSONField(ordinal=3)
	private String interfId;
	
	@Column(name="time_spent")
	@JSONField(ordinal=4)
	private Integer timeSpent;

	@Column(name="mail_receiver")
	@JSONField(ordinal=5)
	private String mailReceiver;

	@Column(name="mail_title")
	@JSONField(ordinal=6)
	private String mailTitle;

	@Column(name="remark")
	@JSONField(ordinal=7)
	private String remark;
	
	@Column(name="type")
	@JSONField(ordinal=8)
	private Integer type;

	@Column(name="status")
	@JSONField(ordinal=9)
	private Integer status;

	@Column(name="opt_type")
	@JSONField(ordinal=10)
	private Integer optType;
	
	@Column(name="timeout")
	@JSONField(ordinal=11)
	private Integer timeOut;

	
	


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((depId == null) ? 0 : depId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ValidRule other = (ValidRule) obj;
		if (depId == null) {
			if (other.depId != null)
				return false;
		} else if (!depId.equals(other.depId))
			return false;
		return true;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getDepId() {
		return depId;
	}

	public void setDepId(Integer depId) {
		this.depId = depId;
	}

	public String getInterfId() {
		return interfId;
	}

	public void setInterfId(String interfId) {
		this.interfId = interfId;
	}

	public Integer getTimeSpent() {
		return timeSpent;
	}

	public void setTimeSpent(Integer timeSpent) {
		this.timeSpent = timeSpent;
	}

	public String getMailReceiver() {
		return mailReceiver;
	}

	public void setMailReceiver(String mailReceiver) {
		this.mailReceiver = mailReceiver;
	}

	public String getMailTitle() {
		return mailTitle;
	}

	public void setMailTitle(String mailTitle) {
		this.mailTitle = mailTitle;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getOptType() {
		return optType;
	}

	public void setOptType(Integer optType) {
		this.optType = optType;
	}

	public Integer getTimeOut() {
		return timeOut;
	}

	public void setTimeOut(Integer timeOut) {
		this.timeOut = timeOut;
	}

	

}
