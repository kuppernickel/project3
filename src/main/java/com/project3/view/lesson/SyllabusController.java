package com.project3.view.lesson;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
public class SyllabusController {
	
	public String Sylla(HttpServletRequest request, Model model) {
		
		String lessonName = request.getParameter("lessonName");
		String grades = request.getParameter("grades");
		int level = Integer.parseInt(request.getParameter("level"));
		String professor = request.getParameter("professor");
		String mobile = request.getParameter("mobile");
		
		return null;
		
		
		
	}
	
}
