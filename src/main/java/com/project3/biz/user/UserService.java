package com.project3.biz.user;

import java.util.List;

public interface UserService {
	public UserVO loginUser(UserVO vo);
	public UserVO getUser(UserVO vo);
	public void updateUser(UserVO vo);
	List<UserVO> getUserList(UserVO vo);
}
