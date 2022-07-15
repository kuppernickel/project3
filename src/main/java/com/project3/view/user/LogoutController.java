package com.project3.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LogoutController {
	
	@RequestMapping(value="/logout.do",produces="text/html; charset=utf8")
	@ResponseBody
	public String logout(HttpSession session){
		session.invalidate();
		String logoutMsg = "<script>alert('로그아웃'); location.href='/'</script>";
		
		return logoutMsg; // index로 돌려야함
	}
}
