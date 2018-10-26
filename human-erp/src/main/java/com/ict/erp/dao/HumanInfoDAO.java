package com.ict.erp.dao;

import java.util.List;

import com.ict.erp.vo.HumanInfo;


public interface HumanInfoDAO {

	public List<HumanInfo> selectHumanInfoList(HumanInfo hi);
	public HumanInfo selectHumanInfo(Integer hiNum);
	public int insertHumanInfo(HumanInfo hi);
	public int updateHumanInfo(HumanInfo hi);
	public int deleteHumanInfo(Integer hiNum);
	
	public HumanInfo getLogingInfo(HumanInfo hi);
	//아이디 검사
	public int CkeckDuplication(String hiid);
}
