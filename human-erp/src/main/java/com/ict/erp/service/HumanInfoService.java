package com.ict.erp.service;

import java.util.List;
import java.util.Map;

import com.ict.erp.vo.HumanInfo;

public interface HumanInfoService {

	public List<HumanInfo> selectHumanInfoList(HumanInfo hi);
	public HumanInfo selectHumanInfo(Integer hiNum);
	public int insertHumanInfo(HumanInfo hi);
	public int updateHumanInfo(HumanInfo hi);
	public int deleteHumanInfo(Integer hiNum);
	
	public HumanInfo getLogingInfo(HumanInfo hi);	


}
