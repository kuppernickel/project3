package com.project3.biz.task;

import org.springframework.web.multipart.MultipartFile;

import com.project3.biz.subject.SubjectVO;

import lombok.Data;

@Data
public class TaskVO {
	private int seq;
	private String title;
	private String writer;
	private String content;
	private String fileName;
	private int fileSize;
	private String writeDate;
	private String updateDate;
	private MultipartFile uploadFile;
	private String originalFileName;
	private String subjectCode;
	private String taskDeadline;
	private String submit;
	private String totalSubmit;
	private String totalStudent;
	private String scored;
	private SubjectVO lessonName;
}
