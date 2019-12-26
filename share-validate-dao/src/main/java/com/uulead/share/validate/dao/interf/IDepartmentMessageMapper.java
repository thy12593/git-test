package com.uulead.share.validate.dao.interf;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.uulead.share.validate.dao.model.DepartmentMessage;

import tk.mybatis.mapper.common.Mapper;

public interface IDepartmentMessageMapper  extends Mapper<DepartmentMessage> {

	List<DepartmentMessage> selectByIntervalTime(Integer pageNo, Integer pageSize, Integer updateTime);
	
	/**
	 * 除了环保厅以外的厅局部门
	 */
	List<DepartmentMessage> selectBesidesHBTByIntervalTime(Integer pageNo, Integer pageSize, Integer updateTime);
	
	/**
	 * 环保厅连接超时最新的一个程序
	 */
	List<DepartmentMessage> selectNewestTimeOutByIntervalTime(@Param("updateTime")Integer updateTime, @Param("status")Integer status);
	
	/**
	 * 环保厅访问出错最新的一个程序
	 */
	List<DepartmentMessage> selectNewestErrorByIntervalTime(@Param("updateTime")Integer updateTime, @Param("status")Integer status);
	
	/**
	 * 环保厅更新超时最新的一个程序
	 */
	List<DepartmentMessage> selectNewestDataOvertimeByIntervalTime(@Param("updateTime")Integer updateTime, @Param("status")Integer status);
	


}
