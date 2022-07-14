package com.project3.biz.board;

import java.beans.Transient;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class BoardVO {
	private int seq;
	private String title;
	private String writer;
	private String content;
	private String fileName;
	private int fileSize;
	private String writeDate;
	private String updateDate;
	private MultipartFile uploadFile;
	
}
