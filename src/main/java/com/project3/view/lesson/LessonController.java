package com.project3.view.lesson;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project3.biz.lesson.LessonService;
import com.project3.biz.lesson.LessonVO;


@Controller
@RequestMapping("/lesson/*")
public class LessonController {
	
	@Autowired
	private LessonService lessonService;
	
	// 강의 등록
	@RequestMapping("/insertLesson.do")
	public String insertLesson(LessonVO vo) throws IOException {
		lessonService.insertLesson(vo);
		return "lectureList.do";
	}

	
	// 강의 수정
	@RequestMapping("/updateLesson.do")
	public String updateLesson(@ModelAttribute("lesson") LessonVO vo) {
		lessonService.updateLesson(vo);
		return "lectureList.do";
	}

	// 강의 삭제
	@RequestMapping("/deleteLesson.do")
	public String deleteLesson(LessonVO vo) {
		lessonService.deleteLesson(vo);
		return "lectureList.do";
	}
	
	
	// 강의 불러오기 (상세 조회)
	@RequestMapping("/getLesson.do")
	public String getLesson(LessonVO vo, Model model) {
		model.addAttribute("lesson", lessonService.getLesson(vo)); // Model 정보 저장
		return "lecture.jsp"; // View 이름 리턴
	}

	@RequestMapping("/getLessonList.do")
	public String getLessonList(LessonVO vo, Model model) {
		model.addAttribute("lessonList", lessonService.getLessonList(vo));
		return "lectureList.jsp"; // View 이름 리턴
	}
	
}









