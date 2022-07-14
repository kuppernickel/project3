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
	public void insertNoticeBoard(BoardVO vo) {
		boardDAO.insertNoticeBoard(vo);
	}

	@Override
	public BoardVO getNoticeBoard(BoardVO vo) {
		return boardDAO.getNoticeBoard(vo);
	}

	@Override
	public void updateNoticeBoard(BoardVO vo) {
		boardDAO.updateNoticeBoard(vo);
	}

	@Override
	public void deleteNoticeBoard(BoardVO vo) {
		boardDAO.deleteNoticeBoard(vo);
	}

	@Override
	public List<BoardVO> getNoticeBoardList(BoardVO vo) {
		return boardDAO.getNoticeBoardList(vo);
	}
	
	
}
