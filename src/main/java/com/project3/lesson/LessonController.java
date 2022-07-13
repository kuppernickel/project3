package com.project3.lesson;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project3.lesson.impl.LessonDAO;


@Controller
public class LessonController {
	
	// 강의등록
	@RequestMapping("/insertLesson.do")
	public String insertLesson(LessonVO vo, LessonDAO lessonDAO) {
		lessonDAO.insertLesson(vo);
		return "LessonList.do";
	}
	
	// 강의수정
	@RequestMapping("/updateLesson.do")
	public String updateLesson(LessonVO vo, LessonDAO lessonDAO) {
		lessonDAO.updateLesson(vo);
		return "updateList.do";
	}
	
	// 강의 삭제
	@RequestMapping("/deleteLesson.do")
	public String deleteLesson(LessonVO vo, LessonDAO lessonDAO) {
		return "deleteLesson.do";
	}
	
	// 강의 읽기(강의 하나 불러오기)
	@RequestMapping("/getLesson.do") 
	public String readLesson(LessonVO vo, LessonDAO lessonDAO) {
		return "getLesson.do";
	}
	
	
	
}
