package com.project3.lesson.impl;

import java.util.List;

import org.springframework.stereotype.Component;

import com.project3.lesson.LessonVO;

@Component
public interface LessonDAO {
	
	
	// 강의 상세페이지 불러오기
	public LessonVO getLesson(LessonVO vo);
	
	// 강의리스트
	public List<LessonVO> getLessonList(LessonVO vo);

	// 강의 수정
	public int updateLesson(LessonVO vo);
	

	// 강의 등록
	public boolean insertLesson(LessonVO vo);
	
	
	// 강의 삭제
	public int deleteLesson(LessonVO vo);
	
}
