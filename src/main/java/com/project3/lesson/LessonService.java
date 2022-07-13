package com.project3.lesson;

import java.util.List;

public interface LessonService {
	public LessonVO getLesson(LessonVO vo);
	List<LessonVO> getLessonList(LessonVO vo);
}
