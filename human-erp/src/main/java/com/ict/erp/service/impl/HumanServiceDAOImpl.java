package com.ict.erp.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.erp.dao.HumanInfoDAO;
import com.ict.erp.service.HumanInfoService;
import com.ict.erp.vo.HumanInfo;
@Service
public class HumanServiceDAOImpl implements HumanInfoService{

	@Autowired
	private HumanInfoDAO hdao;

	@Override
	public List<HumanInfo> selectHumanInfoList(HumanInfo hi) {
		// TODO Auto-generated method stub
		return hdao.selectHumanInfoList(hi);
	}

	@Override
	public HumanInfo selectHumanInfo(Integer hiNum) {
		// TODO Auto-generated method stub
		return hdao.selectHumanInfo(hiNum);
	}

	@Override
	public int insertHumanInfo(HumanInfo hi) {
		// TODO Auto-generated method stub
		return hdao.insertHumanInfo(hi);
	}

	@Override
	public int updateHumanInfo(HumanInfo hi) {
		// TODO Auto-generated method stub
		return hdao.updateHumanInfo(hi);
	}

	@Override
	public int deleteHumanInfo(Integer hiNum) {
		// TODO Auto-generated method stub
		return hdao.deleteHumanInfo(hiNum);
	}

	@Override
	public HumanInfo getLogingInfo(HumanInfo hi) {
		// TODO Auto-generated method stub
		return hdao.getLogingInfo(hi);
	}

	
	
}
