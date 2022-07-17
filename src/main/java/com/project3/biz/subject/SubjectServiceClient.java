package com.project3.biz.subject;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.project3.biz.user.UserVO;

public class SubjectServiceClient {
	public static void main(String[] args) {
		AbstractApplicationContext container =
				new GenericXmlApplicationContext("applicationContext.xml");
		SubjectService subjectService = (SubjectService)container.getBean("subjectService");
		
		SubjectVO vo = new SubjectVO();
		UserVO uVO = new UserVO();
		uVO.setUserId("1");
		
//		System.out.println("--->"+vo.getSubjectId());
//		vo.setPw("0000");
//		SubjectVO subject = subjectService.getSubject(vo);
//		System.out.println("--->"+subject.toString());
		
		List<SubjectVO> subjectList = subjectService.getSubjectList(uVO);
		for(SubjectVO subject:subjectList) {
			System.out.println("--->"+subject.toString());
		}
		
		container.close();
	} 
}
