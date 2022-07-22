package com.project3.biz.task;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.project3.biz.user.UserVO;

public class TaskServiceClient {
	public static void main(String[] args) {
		AbstractApplicationContext container =
				new GenericXmlApplicationContext("applicationContext.xml");
		TaskService taskService = (TaskService)container.getBean("taskService");
		
		TaskVO vo = new TaskVO();
		UserVO user = new UserVO();
		user.setUserId("1");
		user.setAuth("학생");
		vo.setSubjectCode("BU1A01");
		List<TaskVO> taskList = new ArrayList<TaskVO>();
		if(user.getAuth().equals("교수")) {
			taskList = taskService.getSubjectTaskList(vo);
		}else {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("user", user);
			map.put("task", vo);
			taskList = taskService.getSubjectTaskList(map);
		}
		
//		System.out.println("--->"+vo.getTaskId());
//		vo.setPw("0000");
//		TaskVO task = taskService.getTask(vo);
//		System.out.println("--->"+task.toString());
		
//		List<TaskVO> taskList = taskService.getSubjectTaskList(vo);
		for(TaskVO task:taskList) {
			System.out.println("--->"+task.toString());
		}
		
		container.close();
	} 
}
