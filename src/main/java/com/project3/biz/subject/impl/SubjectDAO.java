package com.project3.biz.subject.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project3.biz.subject.SubjectVO;

@Repository
public class SubjectDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public SubjectVO getSubject(SubjectVO vo) {
		return (SubjectVO) mybatis.selectOne("SubjectDAO.getSubject", vo);
	}
	
	public List<SubjectVO> getSubjectList(SubjectVO vo) {
		return mybatis.selectList("SubjectDAO.getSubjectList", vo);
	}
}
