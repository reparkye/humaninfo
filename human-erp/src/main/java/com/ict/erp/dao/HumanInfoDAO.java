package com.ict.erp.dao;

import java.util.List;

import com.ict.erp.vo.HumanInfo;


public interface HumanInfoDAO {

	public List<HumanInfo> selectHumanInfoList(HumanInfo hi);
	public HumanInfo selectHumanInfo(Integer hiNum);
	public int insertHumanInfo(HumanInfo hi);
	public int updateHumanInfo(HumanInfo hi);
	public int deleteHumanInfo(Integer hiNum);
	
}
