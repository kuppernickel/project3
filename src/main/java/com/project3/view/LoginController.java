package com.project3.view;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project3.biz.user.UserVO;
import com.project3.biz.user.impl.UserDAO;

@Controller
public class LoginController {
	
//	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
//	public String login(UserVO vo, UserDAO userDAO, HttpSession session) {
//		if ((Integer)(vo.getUserId()) == null || vo.getUserId() == 0) {
//			throw new IllegalArgumentException("아이디는 반드시 입력해야 합니다.");
//		}
//		UserVO user = userDAO.getUser(vo);
//		if (user != null) {
//			session.setAttribute("userName", user.getName());
//			return "getBoardList.do";
//		} else
//			return "login.jsp";
//	}
	
}
