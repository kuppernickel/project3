package com.project3.view;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.project3.biz.board.BoardService;
import com.project3.biz.board.BoardVO;
import com.project3.biz.board.impl.BoardServiceImpl;
import com.project3.biz.lesson.LessonService;
import com.project3.biz.lesson.LessonVO;
import com.project3.biz.lesson.impl.LessonServiceImpl;
import com.project3.biz.subject.SubjectService;
import com.project3.biz.task.TaskService;
import com.project3.biz.user.UserVO;

@Controller
@SessionAttributes("home")
public class HomeController {
	
	@Autowired
	private SubjectService subjectService;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private TaskService taskService;
	
	// 강의 리스트 페이지
	@RequestMapping(value = "/detail.do", method = RequestMethod.GET)
	public String moveDetail() {
		System.out.println("강의 목록 페이지 이동");
		return "/jsp/subjectList.jsp";
	}
	
	// 메인 페이지
	@RequestMapping(value = "/home.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String moveHome(HttpSession session,Model model, UserVO vo, LessonVO lvo, BoardVO bvo ) {
		session.setAttribute("subjectCode", lvo.getSubjectCode());
		System.out.println("메인 페이지로 이동");
		
		// 강의 목록
		vo = (UserVO)session.getAttribute("user");
		model.addAttribute("subjectList", subjectService.getSubjectList(vo));
		
		// 과제 목록
		model.addAttribute("taskList",taskService.getTaskList(vo));
		
		
		// 학사 공지
		bvo.setSubjectCode("common");
		bvo.setTable("commonNotice");
		model.addAttribute("noticeList", boardService.getBoardList(bvo));
		return "/jsp/home.jsp";
	}
	
	
	// 학사 공지 페이지로 이동
	@RequestMapping(value = "commonNotice.do", method = RequestMethod.GET)
	public String moveCommonNotice() {
		System.out.println("학사공지 페이지로 이동");
		return "/jsp/commonNotice.jsp";
	}
}
