package com.project3.biz.user.impl;

import java.util.List;

import org.springframework.stereotype.Component;

import com.project3.biz.user.UserVO;

@Component
public interface UserDAO {

	public UserVO getUser(UserVO vo);
	
	public void updateUser(UserVO vo);

	public List<UserVO> getUserList(UserVO vo);
	
}