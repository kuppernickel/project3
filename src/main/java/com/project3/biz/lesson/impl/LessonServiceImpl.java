package com.project3.biz.lesson.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project3.biz.lesson.LessonService;
import com.project3.biz.lesson.LessonVO;

@Service("lessonService")
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
	public void updateLesson(LessonVO vo) {
		lessonDAO.updateLesson(vo);
		// 강의 수정 - 1이면 성공 0이면 실패
	}

	@Override
	public void deleteLesson(LessonVO vo) {
		lessonDAO.deleteLesson(vo);
		// 강의 삭제 - 1이면 성공 0이면 실패
	}
	
	@Override
	public void insertLesson(LessonVO vo) {
		lessonDAO.insertLesson(vo);
		// 강의 등록 - 기본값 실패
	}

	
	
}
