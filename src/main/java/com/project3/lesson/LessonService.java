package com.project3.lesson;

import java.util.List;

public interface LessonService {
	public LessonVO getLesson(LessonVO vo);			// 강의 불러오기
	boolean updateLesson(LessonVO vo);				// 강의 수정
	boolean deleteLesson(LessonVO vo);				// 강의 삭제
	boolean insertLesson(LessonVO vo);				// 강의 등록
	List<LessonVO> getLessonList(LessonVO vo);		// 강의 목록
}
