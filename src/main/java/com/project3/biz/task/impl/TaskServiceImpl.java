package com.project3.biz.task.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project3.biz.task.TaskService;
import com.project3.biz.task.TaskSubmitVO;
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
	public void insertTaskSubmit(HashMap<String, Object> map) {
		taskDAO.insertTaskSubmit(map);
	}

	@Override
	public TaskVO getTask(TaskVO vo) {
		return taskDAO.getTask(vo);
	}
	@Override
	public List<TaskSubmitVO> getTaskSubmit(TaskVO vo) {
		return taskDAO.getTaskSubmit(vo);
	}
	@Override
	public TaskSubmitVO getTaskSubmit(HashMap<String, Object> map) {
		return taskDAO.getTaskSubmit(map);
	}

	@Override
	public void updateTask(TaskVO vo) {
		taskDAO.updateTask(vo);
	}
	@Override
	public void updateTaskSubmit(TaskSubmitVO vo) {
		taskDAO.updateTaskSubmit(vo);
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
	@Override
	public List<TaskVO> getSubjectTaskList(HashMap<String, Object> map) {
		return taskDAO.getSubjectTaskList(map);
	}
}
