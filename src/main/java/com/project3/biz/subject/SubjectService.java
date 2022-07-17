package com.project3.biz.subject;

import java.util.List;

import com.project3.biz.user.UserVO;

public interface SubjectService {
	public SubjectVO getSubject(SubjectVO vo);
	public List<SubjectVO> getSubjectList(UserVO uVO);
}
