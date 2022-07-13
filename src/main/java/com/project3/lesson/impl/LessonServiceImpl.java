package com.project3.lesson.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.project3.lesson.LessonService;
import com.project3.lesson.LessonVO;

public class LessonServiceImpl implements LessonService{
	
	@Autowired
	private LessonDAO lessonDAO;
	
	public LessonVO getLesson(LessonVO vo) {
		return lessonDAO.getLesson(vo);
		// 강의 하나하나 불러오는거
	}

	public List<LessonVO> getLessonList(LessonVO vo) {
		return lessonDAO.getLessonList(vo);
		// 강의 리스트를 불러오는거
	}
	
}
