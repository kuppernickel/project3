package com.project3.biz.task.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
	public void updateTask(TaskVO vo) {
		System.out.println("===> Mybatis로 updateTask() 기능 처리");
		mybatis.update("TaskDAO.updateTask", vo);
	}
	
	public void deleteTask(TaskVO vo) {
		System.out.println("===> Mybatis로 deleteTask() 기능 처리");
		mybatis.delete("TaskDAO.deleteTask", vo);
	}
	
	public TaskVO getTask(TaskVO vo) {
		System.out.println("===> Mybatis로 getTask() 기능 처리");
		return (TaskVO) mybatis.selectOne("TaskDAO.getTask", vo);
	}
	
	//모든 과목의 과제 리스트
	public List<TaskVO> getTaskList(UserVO uVO) {
		System.out.println("===> Mybatis로 getTaskList() 기능 처리");
		return mybatis.selectList("TaskDAO.getTaskList", uVO);
	}
	//특정 과목의 과제 리스트
	public List<TaskVO> getSubjectTaskList(TaskVO vo) {
		System.out.println("===> Mybatis로 getSubjectTaskList() 기능 처리");
		return mybatis.selectList("TaskDAO.getSubjectTaskList", vo);
	}
}