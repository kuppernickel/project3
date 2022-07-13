package com.project3.biz.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project3.biz.board.BoardService;
import com.project3.biz.board.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDAO boardDAO;

	@Override
	public boolean insertBoard(BoardVO vo, String type) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public BoardVO getBoard(int seq, String type) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateBoard(BoardVO vo, String type) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteBoard(BoardVO vo, String type) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<BoardVO> getBoardList(String type) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
