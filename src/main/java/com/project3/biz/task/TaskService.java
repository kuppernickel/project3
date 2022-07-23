package com.project3.biz.task;

import java.util.HashMap;
import java.util.List;

import com.project3.biz.user.UserVO;

public interface TaskService {
	void insertTask(TaskVO vo);
	TaskVO getTask(TaskVO vo);
	TaskVO getTaskSubmit(HashMap<String, Object> map);
	void updateTask(TaskVO vo);
	void deleteTask(TaskVO vo);
	List<TaskVO> getTaskList(UserVO uVO);
	List<TaskVO> getSubjectTaskList(TaskVO vo);
	List<TaskVO> getSubjectTaskList(HashMap<String, Object> map);
}