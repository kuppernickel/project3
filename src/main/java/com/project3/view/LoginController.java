package com.project3.view;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.project3.biz.user.UserService;
import com.project3.biz.user.UserVO;

@Controller
@SessionAttributes("user")
public class LoginController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/login.do",method=RequestMethod.GET)
	public String loginView() {
		System.out.println("loginpage");
		
//		vo.setId("test");
//		vo.setPassword("test123");
		return "/WEB-INF/views/login.jsp";
	}
	
//	@RequestMapping(value="/login.do",method=RequestMethod.POST)
//	public String login(UserVO vo,HttpSession session) { //servlet api
//		System.out.println("login");
//		if(vo.getUserId()==null || vo.getUserId().equals("")) {
//			throw new IllegalArgumentException("아이디 필수");
//		}
//		
//		UserVO user = userService.getUser(vo);
//		//System.out.println(user.getName());
//		if(user!=null) {
//			session.setAttribute("userName", user.getName());
//			return "/WEB-INF/views/home.jsp"; //임시
//		}else return "/WEB-INF/views/login.jsp"; //임시
//	}
	@RequestMapping(value="/login.do",method=RequestMethod.POST)
	public String login(@RequestParam String userId,@RequestParam String pw,UserVO vo, HttpSession session) { //servlet api
		System.out.println(userId);
		if(userId==null || userId.equals("")) {
			throw new IllegalArgumentException("아이디 필수");
		}
		vo.setUserId(userId);
		System.out.println(vo.getUserId());
		vo.setPw(pw);
		UserVO user = userService.getUser(vo);
		//System.out.println(user.getName());
		if(user!=null) {
			session.setAttribute("userName", user.getName());
			System.out.println(session.getAttribute("userName"));
			return "/WEB-INF/views/home.jsp"; //임시
		}else return "/WEB-INF/views/login.jsp"; //임시
	}
	
}
