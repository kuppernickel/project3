package com.project3.biz.task;

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
		UserVO Uvo = new UserVO();
		
		vo.setSubjectCode("BU1A01");
		
//		System.out.println("--->"+vo.getTaskId());
//		vo.setPw("0000");
//		TaskVO task = taskService.getTask(vo);
//		System.out.println("--->"+task.toString());
		
		List<TaskVO> taskList = taskService.getSubjectTaskList(vo);
		for(TaskVO task:taskList) {
			System.out.println("--->"+task.toString());
		}
		
		container.close();
	} 
}
