package com.project3.biz.board;

import java.util.List;

import com.project3.biz.user.UserVO;

public interface BoardService {
	void insertBoard(BoardVO vo);
	BoardVO getBoard(BoardVO vo);
	void updateBoard(BoardVO vo);
	void deleteBoard(BoardVO vo);
	List<BoardVO> getBoardList(BoardVO vo);
	
	void insertTask(BoardVO vo);
	BoardVO getTask(BoardVO vo);
	void updateTask(BoardVO vo);
	void deleteTask(BoardVO vo);
	List<BoardVO> getTaskList(UserVO uVO);
}