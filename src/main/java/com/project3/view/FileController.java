package com.project3.view;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FileController {
	
	// 파일 다운로드
	@RequestMapping(value = "/fileDownload.do")
    public void fileDownload(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException {
//        String path =  request.getSession().getServletContext().getRealPath("저장경로");
        request.setCharacterEncoding("UTF-8");
        String filename = request.getParameter("file");			// 업로드 폴더에 저장된 파일 이름(경로 포함됨)
        String filename_utf = new String(request.getParameter("file").getBytes("UTF-8"));
        String downname = request.getParameter("beforeName");	// UUID로 인코딩되기 전 파일 이름

        // default로 크롬용 인코딩
        String downname_utf = new String(downname.getBytes("UTF-8"), "ISO-8859-1");
        
        // 브라우저가 엣지인 경우 재인코딩
        String header = request.getHeader("User-Agent");
        if(header.contains("Edge")) {
        	downname_utf = URLEncoder.encode(downname, "UTF-8").replaceAll("\\+","%20");
        }
        
        if (filename == null || "".equals(filename)) {
            filename = downname;
        }
        
        File file1 = new File(filename);
        if (!file1.exists()) {
            return ;
        }
        
        // 파일명 지정        
        response.setContentType("application/octet-stream");
        response.setHeader("Content-Disposition", "attachment;filename=\""+downname_utf+"\";");
//        response.setHeader("Content-Transfer-Encoding", "binary");

        // 파일 복사 시작
        try {
            OutputStream os = response.getOutputStream();
            FileInputStream fis = new FileInputStream(filename);
 
            int ncount = 0;
            byte[] bytes = new byte[1024];
            
            // 1024 바이트씩 읽으면서 OutputStream에 저장,  -1이 나오면 더이상 읽을 파일이 없다는 뜻
            while ((ncount = fis.read(bytes)) != -1 ) {
                os.write(bytes, 0, ncount);
            }
            fis.close();
            os.close();
            System.out.println("파일 다운 완료");
        } catch (FileNotFoundException ex) {
            System.out.println("FileNotFoundException");
        } catch (IOException ex) {
            System.out.println("IOException");
        }
	}
	
	// 업로드된 파일 삭제
	@PostMapping("/removeFile")
    public ResponseEntity<Boolean> removeFile(String fileName){
		
		// fileName : C://upload/~~~~~~~~
		// 디코딩을 하기 위해서는 앞에 path를 따로 분리해 줘야한다. => 디코딩할 필요가 없어짐
		
		// 파일명을 Path 클래스로 담아둔다.
		Path filePath = Paths.get(fileName);
		
		// getFileName()으로 갖고온 이름을 String 형으로 뽑아낸다.
		String onlyName = filePath.getFileName().toString();
		
//		// 실제 파일 이름을 저장할 변수
//        String srcFileName = null;
        try{
//            srcFileName = URLDecoder.decode(onlyName,"UTF-8");
//            //UUID가 포함된 파일이름을 디코딩해줍니다.
//			File file = new File(/* uploadPath  + */srcFileName);
        	
        	
			File file = new File(fileName);
			
			
            boolean result = file.delete();

            return new ResponseEntity<>(result,HttpStatus.OK);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseEntity<>(false,HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
