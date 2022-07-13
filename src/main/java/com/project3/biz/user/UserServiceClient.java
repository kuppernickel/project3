package com.project3.biz.user;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class UserServiceClient {
	public static void main(String[] args) {
		AbstractApplicationContext container =
				new GenericXmlApplicationContext("applicationContext.xml");
		UserService userService = (UserService)container.getBean("userService");
		
		UserVO vo = new UserVO();
		vo.setUserId("1");
		System.out.println("--->"+vo.getUserId());
		vo.setPw("0000");
		UserVO user = userService.getUser(vo);
//		List<UserVO> userList = userService.getUserList(vo);
//		for(UserVO user:userList) {
//			System.out.println("--->"+user.toString());
//		}
		System.out.println("--->"+user.toString());
		
		container.close();
	} 
}
