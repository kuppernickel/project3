package com.project3.biz.subject.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project3.biz.subject.SubjectService;
import com.project3.biz.subject.SubjectVO;
import com.project3.biz.user.UserVO;

@Service("subjectService")
public class SubjectServiceImpl implements SubjectService{
	
	@Autowired
	private SubjectDAO subjectDAO;

	@Override
	public SubjectVO getSubject(SubjectVO vo) {
		return subjectDAO.getSubject(vo);
	}

	@Override
	public List<SubjectVO> getSubjectList(UserVO uVO) {
		return subjectDAO.getSubjectList(uVO);
	}
	
	
}
