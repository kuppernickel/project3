package com.project3.biz.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project3.biz.user.UserVO;

import org.mybatis.spring.SqlSessionTemplate;

@Repository
public class UserDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public UserVO loginUser(UserVO vo) {
		System.out.println("===> Mybatis�� getUser() ��� ó��");
		return (UserVO) mybatis.selectOne("UserDAO.loginUser", vo);
	}
	
	public UserVO getUser(UserVO vo) {
		System.out.println("===> Mybatis�� getUser() ��� ó��");
		return (UserVO) mybatis.selectOne("UserDAO.getUser", vo);
	}
	
	public void updateUser(UserVO vo) {
		System.out.println("===> Mybatis�� updateUser() ��� ó��");
		mybatis.update("UserDAO.updateUser", vo);
	}

	public List<UserVO> getUserList(UserVO vo) {
		System.out.println("===> Mybatis�� getUserList() ��� ó��");
		return mybatis.selectList("UserDAO.getUserList", vo);
	}
}