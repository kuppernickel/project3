package com.project3.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.project3.biz.common.UtilMgr;
import com.project3.biz.subject.impl.SubjectServiceImpl;
import com.project3.biz.user.UserService;
import com.project3.biz.user.UserVO;

@Controller
@SessionAttributes("user")
public class LoginController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private SubjectServiceImpl subjectserviceimpl;
	
	@RequestMapping(value="/login.do",method=RequestMethod.GET)
	public String loginView() {
		System.out.println("loginpage");
		
//		vo.setId("test");
//		vo.setPassword("test123");
		return "/jsp/index.jsp";
	}
	
	
	
	
	
	
}
