package com.project3.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.project3.biz.user.UserService;
import com.project3.biz.user.UserVO;

@Controller
public class MyInfoController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/getInfo.do",method=RequestMethod.GET)
	public String getUser(UserVO vo, Model model, HttpSession session) {
		UserVO user = (UserVO) session.getAttribute("user");
		vo.setUserId(user.getUserId());
		model.addAttribute("userInfo",userService.getUser(vo));
		return "/jsp/myInfo.jsp";
	}
	
	@RequestMapping(value="/getInfo.do",method=RequestMethod.POST)
	public String updateUser(@ModelAttribute("userInfo") UserVO vo) {
		System.out.println("번호:"+vo.getMobile());
		userService.updateUser(vo);
		return "/jsp/home.jsp";
	}
}
