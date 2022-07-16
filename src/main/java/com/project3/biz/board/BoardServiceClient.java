package com.project3.biz.board;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class BoardServiceClient {
	public static void main(String[] args) {
		AbstractApplicationContext container =
				new GenericXmlApplicationContext("applicationContext.xml");
		BoardService boardService = (BoardService)container.getBean("boardService");
		
		BoardVO vo = new BoardVO();
		
		vo.setTable("commonnotice");
		
//		System.out.println("--->"+vo.getBoardId());
//		vo.setPw("0000");
//		BoardVO board = boardService.getBoard(vo);
//		System.out.println("--->"+board.toString());
		
		List<BoardVO> boardList = boardService.getBoardList(vo);
		for(BoardVO board:boardList) {
			System.out.println("--->"+board.toString());
		}
		
		container.close();
	} 
}
