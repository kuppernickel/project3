package com.project3.view.lesson;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.project3.biz.subject.SubjectService;
import com.project3.biz.subject.SubjectVO;
import com.project3.biz.user.UserVO;

@Controller
@SessionAttributes("subject")
public class SubjectController {
	
	@Autowired
	private SubjectService subjectService;
	
//	@RequestMapping(path = "/getSubject.do", method = RequestMethod.GET)
//	public String getSubject(@RequestParam String subjectCode, SubjectVO vo, Model model) {
//		System.out.println("이동하는 과목페이지의 과목코드 : " + subjectCode);
//		// 파라미터로 받아온 과목명에 따라 lectureList가 각기 다른 내용을 보여줘야함 -> 모델에 담아야 한다
//		vo.setSubjectCode(subjectCode);
//		model.addAttribute("subject", subjectService.getSubject(vo));
//		return "/jsp/lectureList.jsp";
//	}
	
	@RequestMapping(path = "/getSubjectList.do", method = RequestMethod.GET)
	public String getSubjectList(HttpSession session, 
			@RequestParam(value="day", required=false) String day,
			UserVO vo, Model model) {
		vo = (UserVO) session.getAttribute("user");
		//user가 담고있는 현재 요일(한국표준시 기준)을 디폴트로 설정,
		//파라미터로 받을 시 해당 요일을 설정하여 요일별 과목 검색
		if(day!=null) vo.setDay(day); 
		
		System.out.println("day:"+vo.getDay()); 
		// 유저의 정보를 받아서 그 유저가 수강한 과목들을 모델에 담아야한다.
		model.addAttribute("subjectList", subjectService.getSubjectList(vo));
		return "/jsp/subjectList.jsp";
	}
}
