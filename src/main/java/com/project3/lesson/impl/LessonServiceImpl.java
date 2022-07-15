package com.project3.lesson.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.project3.lesson.LessonService;
import com.project3.lesson.LessonVO;

public class LessonServiceImpl implements LessonService{
	
	@Autowired
	private LessonDAO lessonDAO;
	
	@Override
	public LessonVO getLesson(LessonVO vo) {
		return lessonDAO.getLesson(vo);
		// 강의 하나하나 불러오는거
	}

	@Override
	public List<LessonVO> getLessonList(LessonVO vo) {
		return lessonDAO.getLessonList(vo);
		// 강의 리스트를 불러오는거
	}

	@Override
	public boolean updateLesson(LessonVO vo) {
		return lessonDAO.updateLesson(vo) == 1;
		// 강의 수정 - 1이면 성공 0이면 실패
	}

	@Override
	public boolean deleteLesson(LessonVO vo) {
		return lessonDAO.deleteLesson(vo) == 1;
		// 강의 삭제 - 1이면 성공 0이면 실패
	}
	
	@Override
	public boolean insertLesson(LessonVO vo) {
		return lessonDAO.insertLesson(vo);
		// 강의 등록 - 기본값 실패
	}

	
	
}
