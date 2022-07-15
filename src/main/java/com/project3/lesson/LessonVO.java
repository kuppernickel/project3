package com.project3.lesson;

import lombok.Data;

@Data
public class LessonVO {
	private String professor;		// 교수이름
	private String lessonName;		// 강의제목
	private String subjectCode;		// 강의코드
	private String grades;			// 이수학점
	private int people;				// 수강인원
	private String location;		// 강의실
	private String schedule;		// 시간표
	private int userId;				// 학번
	private int hour;				// 출석시간? 차시?
	private String attendence;		// 출석유무
	private String etc;				// 비고
	private String rateTestScore1;	// 중간고사 성적 반영비율
	private String rateTestScore2;	// 기말고사 성적 반영비율
	private String rateAttendence;	// 출석 성적 반영비율
	private String rateAssignment;	// 과제제출 성적 반영비율
	private String lessonContent;	// 강의내용
	private int testScore1;			// 중간고사성적
	private int testScore2;			// 기말고사성적
}
