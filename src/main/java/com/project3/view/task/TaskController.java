package com.project3.view.task;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.project3.biz.task.TaskVO;
import com.project3.biz.task.TaskService;
import com.project3.biz.task.TaskSubmitVO;
import com.project3.biz.user.UserVO;
import com.project3.view.FileController;


@Controller
@SessionAttributes("task")
public class TaskController {
	
	@Autowired
	private TaskService taskService;
	
	// 작성 페이지로 이동
	@RequestMapping(value = "/postTask.do", method = RequestMethod.GET)
	public String writeTask(Model model,
			@RequestParam(value="type",required=false) String type,
			@RequestParam(value="seq",required=false) String seq, HttpSession session) {
		System.out.println("post.do 진입 성공");
		
		// 타입을 받아서 모델에 저장시켜두고 이 post가 수정을 위한것인지 작성을 위한것인지 jsp에서 판단함 
		model.addAttribute("type", type);
		System.out.println("모델에 type 정보 담기 성공");
		model.addAttribute("subjectCode", session.getAttribute("subjectCode"));
		System.out.println("모델에 subjectCode 정보 담기 성공");
		
		if(type.equals("update")) {
			TaskVO vo = new TaskVO();
			vo.setSeq(Integer.parseInt(seq));
			vo = taskService.getTask(vo);
			model.addAttribute("task", vo);		
		}
		
		System.out.println("글 작성 페이지로 이동");
		return "/jsp/post.jsp";
	}
	
	
	
	
	// 글 작성
	@RequestMapping(value = "/insertTask.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String insertTask(TaskVO vo, 
			@RequestParam MultipartFile uploadFile) throws IOException {
		System.out.println("insertTask 컨트롤러 진입 성공");
//			String path = (System.getProperty("user.dir")).replace("\\", "/");
//			final String SAVEFOLDER = path + "/src/main/webapp/upload/";
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
		
		taskService.insertTask(vo);
		
		return "/getTaskList.do";
	}
	
	// 과제제출
	@RequestMapping(value = "/insertTaskSubmit.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String insertTaskSubmit(TaskSubmitVO vo, HttpSession session,
			@RequestParam MultipartFile uploadFile) throws IOException {
		System.out.println("insertTaskSubmit 컨트롤러 진입 성공");
//			String path = (System.getProperty("user.dir")).replace("\\", "/");
//			final String SAVEFOLDER = path + "/src/main/webapp/upload/";
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
		UserVO user = (UserVO)session.getAttribute("user");
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("taskSubmit", vo);
		map.put("user", user);
		taskService.insertTaskSubmit(map);
		
		return "/getTask.do?taskseq="+vo.getParent();
	}
	
	// 글 수정
	@RequestMapping("/updateTask.do")
	public String updateTask(TaskVO vo,
			@RequestParam MultipartFile uploadFile, @RequestParam("file") String beforefile) 
					throws IOException{
		System.out.println("update 진입 성공");
		final String SAVEFOLDER = "C://upload/";
		
		// 파일 업로드 처리
		if (!uploadFile.isEmpty()) {
			
			// 새로운 파일 업로드 시작
			String fileName = uploadFile.getOriginalFilename();
			// 파일 이름 중복 처리 (UUID 활용)
			String extension = fileName.substring(fileName.lastIndexOf("."), fileName.length());

			UUID uuid = UUID.randomUUID();
			String newFileName = uuid.toString() + extension;
			
			// DB에 넣을 파일 정보를 VO에 담는 과정
			vo.setOriginalFileName(fileName);
			vo.setFileName(SAVEFOLDER + newFileName);
			vo.setFileSize((int)(uploadFile.getSize()));
			
			File file = new File(SAVEFOLDER);
			if(!file.exists()) file.mkdirs();
			
			uploadFile.transferTo(new File(SAVEFOLDER + newFileName));
		}
		
		// 기존에 업로드 됐었던 파일 삭제
		// 새로운 파일이 업로드 되던, 파일 없이 수정을 하던 결국 이전에 있던 파일은 삭제되는게 맞음
		FileController filecon = new FileController();
		filecon.removeFile(beforefile);
		
		taskService.updateTask(vo);
		return "getTask.do?seq=" + vo.getSeq();
	}
	
	// 과제 수정
	@RequestMapping("/updateTaskSubmit.do")
	public String updateTaskSubmit(TaskSubmitVO vo,
			@RequestParam MultipartFile uploadFile, @RequestParam("file") String beforefile) 
					throws IOException{
		System.out.println("update 진입 성공");
		final String SAVEFOLDER = "C://upload/";
		
		// 파일 업로드 처리
		if (!uploadFile.isEmpty()) {
			
			// 새로운 파일 업로드 시작
			String fileName = uploadFile.getOriginalFilename();
			// 파일 이름 중복 처리 (UUID 활용)
			String extension = fileName.substring(fileName.lastIndexOf("."), fileName.length());
			
			UUID uuid = UUID.randomUUID();
			String newFileName = uuid.toString() + extension;
			
			// DB에 넣을 파일 정보를 VO에 담는 과정
			vo.setOriginalFileName(fileName);
			vo.setFileName(SAVEFOLDER + newFileName);
			vo.setFileSize((int)(uploadFile.getSize()));
			
			File file = new File(SAVEFOLDER);
			if(!file.exists()) file.mkdirs();
			
			uploadFile.transferTo(new File(SAVEFOLDER + newFileName));
		}
		
		// 기존에 업로드 됐었던 파일 삭제
		// 새로운 파일이 업로드 되던, 파일 없이 수정을 하던 결국 이전에 있던 파일은 삭제되는게 맞음
		FileController filecon = new FileController();
		filecon.removeFile(beforefile);
		
		taskService.updateTaskSubmit(vo);
		System.out.println(vo.getParent());
		return "getTask.do?taskseq=" + vo.getParent();
	}
	
	// 글 삭제
	@RequestMapping("/deleteTask.do")
	public String deleteTask(TaskVO vo) {
		taskService.deleteTask(vo);
		return "getTaskList.do";
	}

	// 글 상세 조회
	@RequestMapping(value="/getTask.do",method = {RequestMethod.GET, RequestMethod.POST})
	public String getTask(TaskVO vo, Model model, HttpSession session, @RequestParam(value="subjectCode",required=false) String subjectCode,
			@RequestParam(value="taskseq",required = false) String seq) {
		UserVO user = (UserVO)session.getAttribute("user");
		if(seq!=null)vo.setSeq(Integer.parseInt(seq));
		System.out.println(vo.getSeq());
		model.addAttribute("task", taskService.getTask(vo));
		
		if(user.getAuth().equals("교수")) {
			model.addAttribute("taskSubmitList", taskService.getTaskSubmit(vo)); // Model 정보 저장
		}else {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("task", vo);
			map.put("user", user);
			model.addAttribute("taskSubmit", taskService.getTaskSubmit(map));
		}
		session.setAttribute("subjectCode", subjectCode);
		return "/jsp/taskDetail.jsp"; // View 이름 리턴
	}
	
	// 게시글 리스트로 이동
	@RequestMapping("/getTaskList.do")
	public String getTaskList(TaskVO vo, Model model, HttpSession session) {
		UserVO user = (UserVO)session.getAttribute("user");
		if(user.getAuth().equals("교수")) {
			model.addAttribute("taskList", taskService.getSubjectTaskList(vo));
		}else {
		HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("user", user);
			map.put("task", vo);
			model.addAttribute("taskList", taskService.getSubjectTaskList(map));
		}
		return "/jsp/taskStatus.jsp";
	}
	
}
