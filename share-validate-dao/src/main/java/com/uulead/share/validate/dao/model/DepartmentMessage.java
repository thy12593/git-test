package com.uulead.share.validate.dao.model;

import java.util.Date;

import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="department_message")
public class DepartmentMessage {
	
	@Id
	private Long id;
	private Integer departmentId;//部门id
	private String resourceName; //接口名
	private Integer errorType; //异常类型
	private Integer optType; //数据检验类型
	private String message; //消息
	private Date createTime; //创建时间
	private Date updateTime; //修改时间
	private Integer status; //状态
	private Integer departmentType; //同部门类型
	private Integer number; //页面刷新次数
	private Integer disposeStatus; //处理状态
	private Date disposeTime; //处理时间
	
	
	public Integer getOptType() {
		return optType;
	}
	public void setOptType(Integer optType) {
		this.optType = optType;
	}
	public Date getDisposeTime() {
		return disposeTime;
	}
	public void setDisposeTime(Date disposeTime) {
		this.disposeTime = disposeTime;
	}
	public Integer getDisposeStatus() {
		return disposeStatus;
	}
	public void setDisposeStatus(Integer disposeStatus) {
		this.disposeStatus = disposeStatus;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public Integer getDepartmentType() {
		return departmentType;
	}
	public void setDepartmentType(Integer departmentType) {
		this.departmentType = departmentType;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}

	public Integer getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}
	public String getResourceName() {
		return resourceName;
	}
	public void setResourceName(String resourceName) {
		this.resourceName = resourceName;
	}
	public Integer getErrorType() {
		return errorType;
	}
	public void setErrorType(Integer errorType) {
		this.errorType = errorType;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}

	
	
	
}
