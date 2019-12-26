package com.uulead.share.validate.dao.interf;

import java.util.Date;
import java.util.List;

import com.uulead.share.validate.dao.model.ValidOpt;

import tk.mybatis.mapper.common.Mapper;

public interface IValidOptMapper extends Mapper<ValidOpt> {

	Date getLatestCreateTime(Integer ruleId);

	Date getCurrentTime();

	ValidOpt getVaildLogById(Integer ruleId);

	List<ValidOpt> getVaildLog();
   
	Date getCreateTime(Integer id);
}