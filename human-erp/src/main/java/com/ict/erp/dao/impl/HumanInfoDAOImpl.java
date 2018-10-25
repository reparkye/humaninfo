package com.ict.erp.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.erp.dao.HumanInfoDAO;
import com.ict.erp.vo.HumanInfo;

@Repository
public class HumanInfoDAOImpl implements HumanInfoDAO{

	@Autowired
	private SqlSession ss;
	
	@Override
	public List<HumanInfo> selectHumanInfoList(HumanInfo hi) {
		return ss.selectList("SQL.HUMANINFO.selectHumanInfoList",hi);
	}

	@Override
	public HumanInfo selectHumanInfo(Integer hiNum) {
		// TODO Auto-generated method stub
		return ss.selectOne("SQL.HUMANINFO.selectHumanInfo",hiNum);
	}

	@Override
	public int insertHumanInfo(HumanInfo hi) {
		// TODO Auto-generated method stub
		return ss.insert("SQL.HUMANINFO.insertHumanInfo",hi);
	}

	@Override
	public int updateHumanInfo(HumanInfo hi) {
		// TODO Auto-generated method stub
		return ss.update("SQL.HUMANINFO.updateHumanInfo",hi);
	}

	@Override
	public int deleteHumanInfo(Integer hiNum) {
		// TODO Auto-generated method stub
		return ss.delete("SQL.HUMANINFO.deleteHumanInfo",hiNum);
	}

	@Override
	public HumanInfo getLogingInfo(HumanInfo hi) {
		// TODO Auto-generated method stub
		return ss.selectOne("SQL.HUMANINFO.loginCk",hi);
	}
	

}
