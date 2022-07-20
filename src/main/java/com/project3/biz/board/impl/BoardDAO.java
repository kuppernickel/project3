package com.project3.biz.board.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project3.biz.board.BoardVO;
import com.project3.biz.user.UserVO;

@Repository
public class BoardDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertBoard(BoardVO vo) {
		System.out.println("===> Mybatis로 insertBoard() 기능 처리");
		mybatis.insert("BoardDAO.insertBoard", vo);
	}

	public void updateBoard(BoardVO vo) {
		System.out.println("===> Mybatis로 updateBoard() 기능 처리");
		mybatis.update("BoardDAO.updateBoard", vo);
	}

	public void deleteBoard(BoardVO vo) {
		System.out.println("===> Mybatis로 deleteBoard() 기능 처리");
		mybatis.delete("BoardDAO.deleteBoard", vo);
	}

	public BoardVO getBoard(BoardVO vo) {
		System.out.println("===> Mybatis로 getBoard() 기능 처리");
		return (BoardVO) mybatis.selectOne("BoardDAO.getBoard", vo);
	}

	public List<BoardVO> getBoardList(BoardVO vo) {
		System.out.println("===> Mybatis로 getBoardList() 기능 처리");
		return mybatis.selectList("BoardDAO.getBoardList", vo);
	}
	
	
	//task 관련
	public void insertTask(BoardVO vo) {
		System.out.println("===> Mybatis로 insertTask() 기능 처리");
		mybatis.insert("TaskDAO.insertTask", vo);
	}
	
	public void updateTask(BoardVO vo) {
		System.out.println("===> Mybatis로 updateTask() 기능 처리");
		mybatis.update("TaskDAO.updateTask", vo);
	}
	
	public void deleteTask(BoardVO vo) {
		System.out.println("===> Mybatis로 deleteTask() 기능 처리");
		mybatis.delete("TaskDAO.deleteTask", vo);
	}
	
	public BoardVO getTask(BoardVO vo) {
		System.out.println("===> Mybatis로 getTask() 기능 처리");
		return (BoardVO) mybatis.selectOne("TaskDAO.getTask", vo);
	}
	
	public List<BoardVO> getTaskList(UserVO uVO) {
		System.out.println("===> Mybatis로 getTaskList() 기능 처리");
		return mybatis.selectList("TaskDAO.getTaskList", uVO);
	}
}