package com.project3.lesson.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project3.lesson.LessonVO;

@Service
public class LessonDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 강의 상세페이지 불러오기
	public LessonVO getLesson(LessonVO vo) {
		return (LessonVO) mybatis.selectOne("LessonDAO.getLesson", vo);
	}
	
	// 강의리스트
	public List<LessonVO> getLessonList(LessonVO vo) {
		return mybatis.selectList("LessonDAO.getLessonList", vo);
	}

	// 강의 수정
	public void updateLesson(LessonVO vo) {
		mybatis.update("LessonDAO.getLesson", vo);
		
	}

	// 강의 등록
	public void insertLesson(LessonVO vo) {
		mybatis.insert("LessonDAO.getLesson", vo);
		
	}
	
	// 강의 삭제
	public void deleteLesson(LessonVO vo) {
		mybatis.delete("LessonDAO.getLesson", vo);
		
	}
}
