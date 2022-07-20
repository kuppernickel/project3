package com.project3.biz.home.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project3.biz.user.UserVO;
import com.project3.biz.user.impl.UserDAO;

@Service("homeService")
public class HomeServiceImpl {
	@Autowired
	private UserDAO userDAO;
	
	public UserVO loginUser(UserVO vo) {
		// TODO Auto-generated method stub
		return userDAO.loginUser(vo);
	}
	
	public UserVO getUser(UserVO vo) {
		// TODO Auto-generated method stub
		return userDAO.getUser(vo);
	}

	public void updateUser(UserVO vo) {
		// TODO Auto-generated method stub
		userDAO.updateUser(vo);
	}
	
	public List<UserVO> getUserList(UserVO vo) {
		// TODO Auto-generated method stub
		return userDAO.getUserList(vo);
	}
}
