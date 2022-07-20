package com.project3.biz.lesson;

import lombok.Data;

@Data
public class LessonVO {
	
	// lesson 컬럼
	private int lessonSeq;		// 강의 번호
	private String subjectCode;		// 강의코드
	private int lessonWeek;			// 강의주차
	private String topicCount;		// 강의 차시 
	private String lessonName;		// 강의제목
	private String lessonDeadline;	// 강의기간(2022.07.11 ~ 2022.07.18안에 안들으면 결석처리)
	private String lessonUrl;		// 강의 Url
	private String lessonOpen;		// 강의수강가능 기간(가능한 기간보다 일찍 올라온 강의 시청불가)
	private String lessonContent;	// 강의공지사항
	private String assignmentList;	//
	
}
