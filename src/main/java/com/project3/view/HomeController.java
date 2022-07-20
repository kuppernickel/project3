package com.project3.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("home")
public class HomeController {
	
	// 강의 리스트 페이지
	@RequestMapping(value = "/detail.do", method = RequestMethod.GET)
	public String moveDetail() {
		System.out.println("강의 목록 페이지 이동");
		return "/jsp/subjectList.jsp";
	}
	
	// 메인 페이지
	@RequestMapping(value = "/home.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String moveHome() {
		System.out.println("메인 페이지로 이동");
		
		
		
		
		return "/jsp/home.jsp";
	}
	
	// 학사 공지 페이지로 이동
	@RequestMapping(value = "commonNotice.do", method = RequestMethod.GET)
	public String moveCommonNotice() {
		System.out.println("학사공지 페이지로 이동");
		return "/jsp/commonNotice.jsp";
	}
}
