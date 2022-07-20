package com.project3.biz.home;

import java.util.List;

import com.project3.biz.user.UserVO;

public interface HomeService {
	public UserVO loginUser(UserVO vo);
	public UserVO getUser(UserVO vo);
	public void updateUser(UserVO vo);
	List<UserVO> getUserList(UserVO vo);
}
