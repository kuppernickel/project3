package com.project3.biz.task.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project3.biz.task.TaskSubmitVO;
import com.project3.biz.task.TaskVO;
import com.project3.biz.user.UserVO;

@Repository
public class TaskDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertTask(TaskVO vo) {
		System.out.println("===> Mybatis로 insertTask() 기능 처리");
		mybatis.insert("TaskDAO.insertTask", vo);
	}
	public void insertTaskSubmit(HashMap<String, Object> map) {
		System.out.println("===> Mybatis로 insertTaskSubmit() 기능 처리");
		mybatis.insert("TaskDAO.insertTaskSubmit", map);
	}
	
	public void updateTask(TaskVO vo) {
		System.out.println("===> Mybatis로 updateTask() 기능 처리");
		mybatis.update("TaskDAO.updateTask", vo);
	}
	public void updateTaskSubmit(TaskSubmitVO vo) {
		System.out.println("===> Mybatis로 updateTaskSubmit() 기능 처리");
		mybatis.update("TaskDAO.updateTaskSubmit", vo);
	}
	
	public void deleteTask(TaskVO vo) {
		System.out.println("===> Mybatis로 deleteTask() 기능 처리");
		mybatis.delete("TaskDAO.deleteTask", vo);
	}
	
	public TaskVO getTask(TaskVO vo) {
		System.out.println("===> Mybatis로 getTask() 기능 처리");
		return (TaskVO) mybatis.selectOne("TaskDAO.getTask", vo);
	}
	public List<TaskSubmitVO> getTaskSubmit(TaskVO vo) {
		System.out.println("===> Mybatis로 getTaskSubmit() 기능 처리");
		return mybatis.selectList("TaskDAO.getTaskSubmit_p", vo);
	}
	public TaskSubmitVO getTaskSubmit(HashMap<String, Object> map) {
		System.out.println("===> Mybatis로 getTaskSubmit() 기능 처리");
		return (TaskSubmitVO) mybatis.selectOne("TaskDAO.getTaskSubmit_s", map);
	}
	
	//모든 과목의 과제 리스트
	public List<TaskVO> getTaskList(UserVO uVO) {
		System.out.println("===> Mybatis로 getTaskList() 기능 처리");
		return mybatis.selectList("TaskDAO.getTaskList", uVO);
	}
	//특정 과목의 과제 리스트(학생)
	public List<TaskVO> getSubjectTaskList(HashMap<String, Object> map) {
		System.out.println("===> Mybatis로 getSubjectTaskList() 기능 처리");
		return mybatis.selectList("TaskDAO.getSubjectTaskList_s", map);
	}
	//특정 과목의 과제 리스트(교수)
	public List<TaskVO> getSubjectTaskList(TaskVO vo) {
		System.out.println("===> Mybatis로 getSubjectTaskList() 기능 처리");
		return mybatis.selectList("TaskDAO.getSubjectTaskList_p", vo);
	}
}