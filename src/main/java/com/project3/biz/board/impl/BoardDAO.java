package com.project3.biz.board.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project3.biz.board.BoardVO;

@Repository
public class BoardDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertNoticeBoard(BoardVO vo) {
		System.out.println("===> Mybatis로 insertBoard() 기능 처리");
		mybatis.insert("BoardDAO.insertNoticeBoard", vo);
	}

	public void updateNoticeBoard(BoardVO vo) {
		System.out.println("===> Mybatis로 updateBoard() 기능 처리");
		mybatis.update("BoardDAO.updateNoticeBoard", vo);
	}

	public void deleteNoticeBoard(BoardVO vo) {
		System.out.println("===> Mybatis로 deleteBoard() 기능 처리");
		mybatis.delete("BoardDAO.deleteNoticeBoard", vo);
	}

	public BoardVO getNoticeBoard(BoardVO vo) {
		System.out.println("===> Mybatis로 getBoard() 기능 처리");
		return (BoardVO) mybatis.selectOne("BoardDAO.getNoticeBoard", vo);
	}

	public List<BoardVO> getNoticeBoardList(BoardVO vo) {
		System.out.println("===> Mybatis로 getBoardList() 기능 처리");
		return mybatis.selectList("BoardDAO.getNoticeBoardList", vo);
	}
}