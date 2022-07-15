package com.project3.biz.lesson.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project3.biz.board.BoardVO;
import com.project3.lesson.LessonVO;

@Repository
public class LessonDAO {
	
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 강의 상세페이지 불러오기
	public void getLesson(LessonVO vo) {
		System.out.println("mybatis로 getLesson() 기능처리");
		mybatis.insert("LessonDAO.insertLesson", vo);
	}
	
	// 강의 등록
	public void insertLesson(LessonVO vo) {
		System.out.println("===> Mybatis로 insertLesson() 기능 처리");
		mybatis.insert("LessonDAO.insertLesson", vo);
	}
	
	// 강의리스트
	public List<LessonVO> getLessonList(LessonVO vo) {
		System.out.println("mybatis로 getListLesson() 기능처리");
		mybatis.list
	}

	public void updateLesson(LessonVO vo) {
		// TODO Auto-generated method stub
		
	}

	// 강의 수정
	
	

	// 강의 등록
	
	
	
	// 강의 삭제
	
}
