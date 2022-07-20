package com.project3.view.board;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	@RequestMapping(value = "/post.do", method = RequestMethod.GET)
	public String writeBoard(Model model, @RequestParam("table") String table) {
		model.addAttribute("table", table);
		System.out.println("글 작성 페이지로 이동");
		return "/jsp/post.jsp";
	}
	
	// 공지사항 페이지로 이동
	@RequestMapping(value = "/notice.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String goToNotice() {
		System.out.println("공지사항 페이지로 이동");
		return "/jsp/notice.jsp";
	}
	
	// 글 작성
	@RequestMapping(value = "/insertBoard.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String insertBoard(BoardVO vo, @RequestParam("table") String table,
			@RequestParam MultipartFile uploadFile) throws IOException {
		System.out.println("insertBoard 컨트롤러 진입 성공");
//		String path = (System.getProperty("user.dir")).replace("\\", "/");
//		final String SAVEFOLDER = path + "/src/main/webapp/upload/";
		final String SAVEFOLDER = "C://upload/";
		
		// 파일 업로드 처리
		if (!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			// 파일 이름 중복 처리 (UUID 활용)
			String extension = fileName.substring(fileName.lastIndexOf("."), fileName.length());

			UUID uuid = UUID.randomUUID();
			String newFileName = uuid.toString() + extension;
			
			// DB에 넣을 파일 정보를 VO에 담는 과정
			vo.setOriginalFileName(fileName);
			vo.setFileName(SAVEFOLDER + newFileName);
			vo.setFileSize((int)(uploadFile.getSize()));
			
			// 폴더 생성
			// 나중에는 많은 파일들이 한곳에 모일 것이며, 그것을 관리하기 쉽도록
			// 날짜별로 새로운 폴더를 만들어서 거기에 파일을 따로따로 저장해두면 좋을 것 같음
			File file = new File(SAVEFOLDER);
			if(!file.exists()) file.mkdirs();
			
			uploadFile.transferTo(new File(SAVEFOLDER + newFileName));
		}
		
//		vo.setTable(table);
		boardService.insertBoard(vo);
		
		return "/getBoardList.do?table=" + table;
	}
	
	// 글 수정
	@RequestMapping("/updateBoard.do")
	public String updateBoard(@ModelAttribute("board") BoardVO vo, @RequestParam("table") String table) {
		boardService.updateBoard(vo);
		return "getBoard.do?seq=" + vo.getSeq() + "&table=" + table;
	}
	
	// 글 삭제
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(BoardVO vo) {
		boardService.deleteBoard(vo);
		return "getBoardList.do";
	}

	// 글 상세 조회
	@RequestMapping("/getBoard.do")
	public String getBoard(BoardVO vo, Model model, @RequestParam("table") String table) {
		model.addAttribute("board", boardService.getBoard(vo)); // Model 정보 저장
		model.addAttribute("table", table);
		return "/jsp/getBoard.jsp"; // View 이름 리턴
	}
	
	// 게시글 리스트로 이동
	@RequestMapping("/getBoardList.do")
	public String getBoardList(BoardVO vo, Model model, @RequestParam("table") String table) {
		System.out.println(table);
		model.addAttribute("boardList", boardService.getBoardList(vo));
		model.addAttribute("table", table);
		return "/" + table + ".do";
	}
	
	
}
