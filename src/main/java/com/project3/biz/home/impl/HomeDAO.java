package com.project3.biz.home.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.project3.biz.user.UserVO;

public class HomeDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public UserVO loginUser(UserVO vo) {
		System.out.println("===> Mybatis로 loginUser() 기능 처리");
		return (UserVO) mybatis.selectOne("UserDAO.loginUser", vo);
	}
	
	public UserVO getUser(UserVO vo) {
		System.out.println("===> Mybatis로 getUser() 기능 처리");
		return (UserVO) mybatis.selectOne("UserDAO.getUser", vo);
	}
	
	public void updateUser(UserVO vo) {
		System.out.println("===> Mybatis로 updateUser() 기능 처리");
		mybatis.update("UserDAO.updateUser", vo);
	}

	public List<UserVO> getUserList(UserVO vo) {
		System.out.println("===> Mybatis로 getUserList() 기능 처리");
		return mybatis.selectList("UserDAO.getUserList", vo);
	}
}
