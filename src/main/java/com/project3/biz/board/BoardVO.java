package com.project3.biz.board;

import java.beans.Transient;

import org.springframework.web.multipart.MultipartFile;

import com.project3.biz.subject.SubjectVO;

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
	private String table;
	private String originalFileName;
	private String subjectCode;
	private String taskDeadline;
	private SubjectVO lessonName;
}
