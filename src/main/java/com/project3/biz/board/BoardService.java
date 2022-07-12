package com.project3.biz.board;

import java.util.List;

public interface BoardService {
	boolean insertBoard(BoardVO vo, String type);
	BoardVO getBoard(int seq, String type);
	boolean updateBoard(BoardVO vo, String type);
	boolean deleteBoard(BoardVO vo, String type);
	List<BoardVO> getBoardList(String type);
}
