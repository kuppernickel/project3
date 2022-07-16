package com.project3.view.lesson;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("subject")
public class SubjectController {
	
	
	
	@RequestMapping(path = "/getSubject.do", method = RequestMethod.GET)
	public String getSubject(HttpServletRequest request, Model model) {
		System.out.println("이동하는 과목 페이지 : " + request.getParameter("subject"));
		model.addAttribute("lesson", );
		// 파라미터로 받아온 과목명에 따라 lectureList가 각기 다른 내용을 보여줘야함 -> 모델에 담아야 한다
		return "/jsp/lectureList.jsp";
	}
}
