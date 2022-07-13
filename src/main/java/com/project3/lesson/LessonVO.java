package com.project3.lesson;

import lombok.Data;

@Data
public class LessonVO {
	private String professor;		// 교수이름
	private String lessonname;		// 강의제목
	private String subjectcode;		// 강의코드
	private String grades;			// 이수학점
	private int people;				// 수강인원
	private String location;		// 강의실
	private String schedule;		// 시간표
}
