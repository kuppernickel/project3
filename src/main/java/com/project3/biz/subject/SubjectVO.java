package com.project3.biz.subject;

import com.project3.biz.user.UserVO;

import lombok.Data;

@Data
public class SubjectVO {
	private String subjectCode;			// 과목코드
	private String lessonName;			// 과목이름
	private String profName;			// 담당 교수이름
	private int grades;					// 과목의 이수학점
	private int people;					// 과목의 정원수
	private String location;			// 강의실 위치
	private String scd;					// 시간표
	private int rateTestScore1;			// 중간고사 만점 (성적 반영 비율)
	private int rateTestScore2;			// 기말고사 만점 (성적 반영 비율)
	private int rateAttendence;			// 출석 만점	 (성적 반영 비율)
	private int rateAssignment;			// 과제 만점	 (성적 반영 비율)
	private String lessonContent;		// 수업내용
	private String day;					// 수업요일
	private int hour;					// 수업시간
	private UserVO professor;			
}
