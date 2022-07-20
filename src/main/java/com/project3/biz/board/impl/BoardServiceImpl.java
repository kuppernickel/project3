package com.project3.biz.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project3.biz.board.BoardService;
import com.project3.biz.board.BoardVO;
import com.project3.biz.user.UserVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDAO boardDAO;

	@Override
	public void insertBoard(BoardVO vo) {
		boardDAO.insertBoard(vo);
	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		return boardDAO.getBoard(vo);
	}

	@Override
	public void updateBoard(BoardVO vo) {
		boardDAO.updateBoard(vo);
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		boardDAO.deleteBoard(vo);
	}

	@Override
	public List<BoardVO> getBoardList(BoardVO vo) {
		return boardDAO.getBoardList(vo);
	}
	
	
	
	//task 관련
	@Override
	public void insertTask(BoardVO vo) {
		boardDAO.insertTask(vo);
	}

	@Override
	public BoardVO getTask(BoardVO vo) {
		return boardDAO.getTask(vo);
	}

	@Override
	public void updateTask(BoardVO vo) {
		boardDAO.updateTask(vo);
	}

	@Override
	public void deleteTask(BoardVO vo) {
		boardDAO.deleteTask(vo);
	}

	@Override
	public List<BoardVO> getTaskList(UserVO uVO) {
		return boardDAO.getTaskList(uVO);
	}
}
