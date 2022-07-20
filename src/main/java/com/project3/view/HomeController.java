package com.project3.view;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.project3.biz.subject.impl.SubjectServiceImpl;
import com.project3.biz.user.UserVO;

@Controller
@SessionAttributes("home")
public class HomeController {
	
	@Autowired
	private SubjectServiceImpl subjectserviceimpl;
	
	
	// 강의 리스트 페이지
	@RequestMapping(value = "/detail.do", method = RequestMethod.GET)
	public String moveDetail() {
		System.out.println("강의 목록 페이지 이동");
		return "/jsp/subjectList.jsp";
	}
	
	// 메인 페이지
	@RequestMapping(value = "/home.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String moveHome(HttpSession session,Model model, UserVO vo) {
		System.out.println("메인 페이지로 이동");
		
		// 강의 목록
		vo = (UserVO)session.getAttribute("user");
		model.addAttribute("subjectList", subjectserviceimpl.getSubjectList(vo));
		
		// 과제 목록
		
		// 학사 공지
		
		return "/jsp/home.jsp";
	}
	
	// 학사 공지 페이지로 이동
	@RequestMapping(value = "commonNotice.do", method = RequestMethod.GET)
	public String moveCommonNotice() {
		System.out.println("학사공지 페이지로 이동");
		return "/jsp/commonNotice.jsp";
	}
}
