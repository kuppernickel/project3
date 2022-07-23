package com.project3.biz.task;

import org.springframework.web.multipart.MultipartFile;

import com.project3.biz.subject.SubjectVO;

import lombok.Data;

@Data
public class TaskSubmitVO {
	private int seq;
	private String writer;
	private String fileName;
	private int fileSize;
	private String writeDate;
	private MultipartFile uploadFile;
	private String originalFileName;
	private String subjectCode;
	private String parent;
	private String score;
}
