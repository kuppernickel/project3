package com.project3.view.board;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.project3.biz.board.BoardService;
import com.project3.biz.board.BoardVO;


@Controller
@SessionAttributes("board")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	// 글 작성
	@RequestMapping("/insertNoticeBoard.do")
	public String insertBoard(BoardVO vo) throws IOException {
		
		String path = (System.getProperty("user.dir")).replace("\\", "/");
		final String SAVEFOLDER = path + "/src/main/webapp/images/";
		
		// 파일 업로드 처리
		MultipartFile uploadFile = vo.getUploadFile();
		if (!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(SAVEFOLDER + fileName));
		}

		boardService.insertNoticeBoard(vo);
		return "getNoticeBoardList.do";
	}
	
	// 글 수정
	@RequestMapping("/updateNoticeBoard.do")
	public String updateBoard(@ModelAttribute("board") BoardVO vo) {
		boardService.updateNoticeBoard(vo);
		return "getBoardList.do";
	}
	
	// 글 삭제
	@RequestMapping("/deleteNoticeBoard.do")
	public String deleteBoard(BoardVO vo) {
		boardService.deleteNoticeBoard(vo);
		return "getBoardList.do";
	}

	// 글 상세 조회
	@RequestMapping("/getNoticeBoard.do")
	public String getBoard(BoardVO vo, Model model) {
		model.addAttribute("board", boardService.getNoticeBoard(vo)); // Model 정보 저장
		return "getBoard.jsp"; // View 이름 리턴
	}
	
	@RequestMapping("/getNoticeBoardList.do")
	public String getBoardList(BoardVO vo, Model model) {
		model.addAttribute("boardList", boardService.getNoticeBoardList(vo));
		return "getBoardList.jsp"; // View 이름 리턴
	}
	
	
}
