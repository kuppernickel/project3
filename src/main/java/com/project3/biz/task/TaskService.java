package com.project3.biz.task;

import java.util.List;

import com.project3.biz.user.UserVO;

public interface TaskService {
	void insertTask(TaskVO vo);
	TaskVO getTask(TaskVO vo);
	void updateTask(TaskVO vo);
	void deleteTask(TaskVO vo);
	List<TaskVO> getTaskList(UserVO uVO);
	List<TaskVO> getSubjectTaskList(TaskVO vo);
}