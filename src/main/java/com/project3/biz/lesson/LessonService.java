package com.project3.biz.lesson;

import java.util.List;

public interface LessonService {
	public LessonVO getLesson(LessonVO vo);					// 강의 불러오기
	public void updateLesson(LessonVO vo);					// 강의 수정
	public void deleteLesson(LessonVO vo);					// 강의 삭제
	public void insertLesson(LessonVO vo);					// 강의 등록
	List<LessonVO> getLessonList(LessonVO vo);				// 강의 목록
	List<LessonVO> getAssignmentList(LessonVO lvo);			// 과제 목록
}
