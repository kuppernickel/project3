package com.project3.biz.board;

import java.util.List;

public interface BoardService {
	void insertNoticeBoard(BoardVO vo);
	BoardVO getNoticeBoard(BoardVO vo);
	void updateNoticeBoard(BoardVO vo);
	void deleteNoticeBoard(BoardVO vo);
	List<BoardVO> getNoticeBoardList(BoardVO vo);
}
