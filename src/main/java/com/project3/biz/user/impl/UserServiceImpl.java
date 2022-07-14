package com.project3.biz.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project3.biz.user.UserService;
import com.project3.biz.user.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDAO userDAO;
	
	@Override
	public UserVO loginUser(UserVO vo) {
		// TODO Auto-generated method stub
		return userDAO.loginUser(vo);
	}
	
	@Override
	public UserVO getUser(UserVO vo) {
		// TODO Auto-generated method stub
		return userDAO.getUser(vo);
	}

	@Override
	public void updateUser(UserVO vo) {
		// TODO Auto-generated method stub
		userDAO.updateUser(vo);
	}
	
	@Override
	public List<UserVO> getUserList(UserVO vo) {
		// TODO Auto-generated method stub
		return userDAO.getUserList(vo);
	}
}
