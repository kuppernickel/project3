package com.project3.view;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
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
        String path =  request.getSession().getServletContext().getRealPath("저장경로");
        
        String filename = request.getParameter("fileName");
        String downname = request.getParameter("downName");
        String realPath = "";
        System.out.println("downname: "+downname);
        if (filename == null || "".equals(filename)) {
            filename = downname;
        }
         
        try {
            String browser = request.getHeader("User-Agent"); 
            //파일 인코딩 
            if (browser.contains("MSIE") || browser.contains("Trident")
                    || browser.contains("Chrome")) {
                filename = URLEncoder.encode(filename, "UTF-8").replaceAll("\\+",
                        "%20");
            } else {
                filename = new String(filename.getBytes("UTF-8"), "ISO-8859-1");
            }
        } catch (UnsupportedEncodingException ex) {
            System.out.println("UnsupportedEncodingException");
        }
        realPath = path +"/" +downname.substring(0,4) + "/"+downname;
        System.out.println(realPath);
        File file1 = new File(realPath);
        if (!file1.exists()) {
            return ;
        }
         
        // 파일명 지정        
        response.setContentType("application/octer-stream");
        response.setHeader("Content-Transfer-Encoding", "binary;");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
        try {
            OutputStream os = response.getOutputStream();
            FileInputStream fis = new FileInputStream(realPath);
 
            int ncount = 0;
            byte[] bytes = new byte[512];
 
            while ((ncount = fis.read(bytes)) != -1 ) {
                os.write(bytes, 0, ncount);
            }
            fis.close();
            os.close();
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
		
		// 실제 파일 이름을
        String srcFileName = null;

        try{
            srcFileName = URLDecoder.decode(onlyName,"UTF-8");
            //UUID가 포함된 파일이름을 디코딩해줍니다.
			File file = new File(/* uploadPath  + */srcFileName);
            boolean result = file.delete();

            return new ResponseEntity<>(result,HttpStatus.OK);
        }catch (UnsupportedEncodingException e){
            e.printStackTrace();
            return new ResponseEntity<>(false,HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
