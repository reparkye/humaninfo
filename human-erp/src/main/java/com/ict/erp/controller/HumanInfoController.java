package com.ict.erp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ict.erp.service.HumanInfoService;
import com.ict.erp.vo.HumanInfo;

@Controller
public class HumanInfoController {

	@Autowired
	private HumanInfoService hs;
	
	@RequestMapping(value="/humaninfo", method=RequestMethod.GET)
	@ResponseBody
	public List<HumanInfo> selectHumanInfoList(@ModelAttribute HumanInfo hi){
		System.out.println(hs.selectHumanInfoList(hi));
		return hs.selectHumanInfoList(hi);
	}
	
	@RequestMapping(value="/humaninfo/{hiNum}",method=RequestMethod.GET)
	@ResponseBody
	public HumanInfo selectHumanInfo(@PathVariable Integer hiNum) {
		return hs.selectHumanInfo(hiNum);
	}
	
	@RequestMapping(value="/Humaninfo", method=RequestMethod.POST) 
	@ResponseBody
	public Integer insertHumanInfo(@RequestBody HumanInfo hi) {
		return hs.insertHumanInfo(hi);
	}
	@RequestMapping(value="/Humaninfo/{hiNum}", method=RequestMethod.PUT)
	@ResponseBody
	public Integer updateHumanInfo(@RequestBody HumanInfo hi, @PathVariable Integer hiNum) {
		return hs.updateHumanInfo(hi);
	}
	@RequestMapping(value="/Humaninfo/{hiNum}", method=RequestMethod.DELETE)
	@ResponseBody
	public Integer deleteHumanInfo(@PathVariable Integer hiNum) {
		return hs.deleteHumanInfo(hiNum);
	}
}
