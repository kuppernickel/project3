package com.project3.biz.user;

import lombok.Data;

@Data
public class UserVO {
	private String name;			// 이름
	private int userId;				// 로그인 아이디(학번, 직번)
	private String pw;				// 비밀번호
	private String email;			// 이메일
	private String moblie;			// 휴대폰 번호
}
