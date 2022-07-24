package com.project3.biz.subject.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project3.biz.subject.SubjectVO;
import com.project3.biz.task.TaskVO;
import com.project3.biz.user.UserVO;

@Repository
public class SubjectDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public SubjectVO getSubject(SubjectVO vo) {
		return (SubjectVO) mybatis.selectOne("SubjectDAO.getSubject", vo);
	}
	// Service한테 짬맞아서 비어있는 SubjectVO 객체를 받아옴
	// 얘도 mybatis한테 db조회해서 있는지 확인해달라고 짬때릴려고 return보냄
	
	
	public List<SubjectVO> getSubjectList(UserVO uVO) {
		return mybatis.selectList("SubjectDAO.getSubjectList", uVO);
	}
	
	public SubjectVO getSyllaList(SubjectVO uvo) {
		return mybatis.selectOne("SubjectDAO.getSyllaList", uvo);
	}
	
}
