package com.project3.view;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.project3.biz.common.UtilMgr;
import com.project3.biz.home.HomeService;
import com.project3.biz.home.HomeVO;
import com.project3.biz.home.impl.HomeServiceImpl;
import com.project3.biz.subject.impl.SubjectServiceImpl;
import com.project3.biz.user.UserService;
import com.project3.biz.user.UserVO;

@Controller
@SessionAttributes("home")
public class HomeController {
	
	@Autowired
	private UserService userService;
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
	
	@RequestMapping(value="/login.do",method=RequestMethod.POST)
	public String login(@RequestParam String userId, @RequestParam String pw, UserVO vo,
			HttpSession session, Model model) {
		System.out.println("userId");
		if(userId==null || userId.equals("")) {
			throw new IllegalArgumentException("ID필수");
		}
		vo.setUserId(userId);
		System.out.println(vo.getUserId());
		vo.setPw(pw);
		UserVO user = userService.loginUser(vo);
		
		if(user!=null) {
			user.setDay(UtilMgr.calcDay());
			session.setAttribute("user", user);
			model.addAttribute("subjectList", subjectserviceimpl.getSubjectList(vo));
			return "/home.do";
		}else {
			throw new IllegalArgumentException("Login Failed");
		}
	}
	
	
	
	
}
