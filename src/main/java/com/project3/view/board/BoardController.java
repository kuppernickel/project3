package com.project3.view.board;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.project3.biz.board.BoardService;
import com.project3.biz.board.BoardVO;


@Controller
@SessionAttributes("board")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	// 작성 페이지로 이동
	@RequestMapping(path = "/insertBoard.do", method = RequestMethod.GET)
	public String writeBoard() {
		System.out.println("글 작성 페이지로 이동");
		return "/jsp/post.jsp";
	}
	
	// 공지사항 페이지로 이동
	@RequestMapping(path = "/noticeBoard.do", method = RequestMethod.GET)
	public String goToNotice() {
		System.out.println("공지사항 페이지로 이동");
		return "/jsp/notice.jsp";
	}
	
	// 글 작성
	@RequestMapping(path = "/insertBoard.do", method = RequestMethod.POST)
	public String insertBoard(BoardVO vo) throws IOException {
		
		String path = (System.getProperty("user.dir")).replace("\\", "/");
		final String SAVEFOLDER = path + "/src/main/webapp/upload/";
		
		// 파일 업로드 처리
		MultipartFile uploadFile = vo.getUploadFile();
		if (!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(SAVEFOLDER + fileName));
		}
		
		boardService.insertBoard(vo);
		return "/noticeBoard.do";
	}
	
	// 글 수정
	@RequestMapping("/updateBoard.do")
	public String updateBoard(@ModelAttribute("board") BoardVO vo) {
		boardService.updateBoard(vo);
		return "getBoardList.do";
	}
	
	// 글 삭제
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(BoardVO vo) {
		boardService.deleteBoard(vo);
		return "getBoardList.do";
	}

	// 글 상세 조회
	@RequestMapping("/getBoard.do")
	public String getBoard(BoardVO vo, Model model) {
		model.addAttribute("board", boardService.getBoard(vo)); // Model 정보 저장
		return "getBoard.jsp"; // View 이름 리턴
	}
	
	@RequestMapping("/getBoardList.do")
	public String getBoardList(BoardVO vo, Model model) {
		model.addAttribute("boardList", boardService.getBoardList(vo));
		return "getBoardList.jsp"; // View 이름 리턴
	}
	
	
}
