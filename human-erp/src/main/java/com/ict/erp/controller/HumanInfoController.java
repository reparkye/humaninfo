package com.ict.erp.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.exception.DataException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
	
	//view 이동해주는 소스
	@RequestMapping(value="/humaninfo/{hiNum}", method=RequestMethod.GET)
	public ModelAndView selectUserInfo(@PathVariable Integer hiNum) {
		return new ModelAndView("humaninfo/myview","hi",hs.selectHumanInfo(hiNum));
	}
	
	@RequestMapping(value="/humaninfo", method=RequestMethod.POST) 
	@ResponseBody
	public Integer insertHumanInfo(@RequestBody HumanInfo hi) {
		return hs.insertHumanInfo(hi);
	}
	@RequestMapping(value="/humaninfo/{hiNum}", method=RequestMethod.PUT)
	@ResponseBody
	public Integer updateHumanInfo(@RequestBody HumanInfo hi, @PathVariable Integer hiNum) {
		return hs.updateHumanInfo(hi);
	}
	@RequestMapping(value="/humaninfo/{hiNum}", method=RequestMethod.DELETE)
	@ResponseBody
	public Integer deleteHumanInfo(@PathVariable Integer hiNum) {
		return hs.deleteHumanInfo(hiNum);
	}
	
    //아이디 중복 체크
    @RequestMapping(value="/idckeck", method=RequestMethod.POST)
	@ResponseBody
	public Integer CheckDuplication(@RequestParam("hiid") String hiid) {
      	return hs.CheckDuplication(hiid); 
    }
	
	//sign_in//    
    @RequestMapping(value="/loginCk", method=RequestMethod.POST)
    public String loginCk(HttpSession session,HumanInfo hi) {
    	String returnURL = "";
    	
    	if(session.getAttribute("login") != null) {
    		session.removeAttribute("login");
    	}
    	
    	HumanInfo Info = hs.getLogingInfo(hi);
    	
    	if(Info != null) {
    		session.setAttribute("login", Info);
    		returnURL = "redirect:/url/list";
    	}else {
    		returnURL = "redirect:/url/sign_in";
    	}
    	return returnURL;
    } 
   
    
   
	
}
