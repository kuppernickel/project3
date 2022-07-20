package com.project3.biz.home;

import lombok.Data;

@Data
public class HomeVO {
	
	private String userId;			// 로그인 아이디(학번, 직번)
	private String auth;			// 권한
	private String pw;				// 비밀번호
	private String name;			// 이름
	private String mobile;			// 휴대폰 번호
	private String email;			// 이메일
	private String major;			// 전공
	private String major2;			// 복수전공
	private String subMajor;		// 부전공
	private String zipCode;			// 우편번호
	private String address1;		// 주소
	private String address2;		// 상세주소
	private int level;				// 학년
	private String enroll;			// 재적
	private String day;				// 과목검색용 요일
	
}
