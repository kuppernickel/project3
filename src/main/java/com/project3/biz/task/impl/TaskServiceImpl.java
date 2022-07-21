package com.project3.biz.task.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project3.biz.task.TaskService;
import com.project3.biz.task.TaskVO;
import com.project3.biz.user.UserVO;

@Service("taskService")
public class TaskServiceImpl implements TaskService{
	@Autowired
	private TaskDAO taskDAO;

	@Override
	public void insertTask(TaskVO vo) {
		taskDAO.insertTask(vo);
	}

	@Override
	public TaskVO getTask(TaskVO vo) {
		return taskDAO.getTask(vo);
	}

	@Override
	public void updateTask(TaskVO vo) {
		taskDAO.updateTask(vo);
	}

	@Override
	public void deleteTask(TaskVO vo) {
		taskDAO.deleteTask(vo);
	}

	@Override
	public List<TaskVO> getTaskList(UserVO uVO) {
		return taskDAO.getTaskList(uVO);
	}
	
	@Override
	public List<TaskVO> getSubjectTaskList(TaskVO vo) {
		return taskDAO.getSubjectTaskList(vo);
	}
}