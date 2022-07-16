package com.project3.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("home")
public class HomeController {
	
	// 강의 리스트 페이지
	@RequestMapping(path = "/detail.do", method = RequestMethod.GET)
	public String moveDetail() {
		System.out.println("강의 목록 페이지 이동");
		return "/jsp/detailedLectureList.jsp";
	}
	
	// 메인 페이지
	@RequestMapping(path = "/home.do", method = RequestMethod.GET)
	public String moveHome() {
		System.out.println("메인 페이지로 이동");
		return "/jsp/home.jsp";
	}
	
}
