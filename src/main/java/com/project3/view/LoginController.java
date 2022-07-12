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
	
//	@RequestMapping(value="/login.do",method=RequestMethod.POST)
//	public String login(UserVO vo,UserDAO userDAO,HttpSession session) { //servlet api
//		System.out.println("�� ��� ó��");
//		if(vo.getId()==null || vo.getId().equals("")) {
//			throw new IllegalArgumentException("아이디 필수");
//		}
//		
//		UserVO user = userDAO.getUser(vo);
//		if(user!=null) {
//			session.setAttribute("userName", user.getName());
//			return "getBoardList.do";
//		}else return "login.jsp";
//	}
	
}
