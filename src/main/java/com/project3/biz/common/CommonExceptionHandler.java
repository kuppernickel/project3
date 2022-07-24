//package com.project3.biz.common;
//
//import org.springframework.web.bind.annotation.ControllerAdvice;
//import org.springframework.web.bind.annotation.ExceptionHandler;
//import org.springframework.web.servlet.ModelAndView;
//
//@ControllerAdvice("com.project3.view")
//public class CommonExceptionHandler {
//
//	@ExceptionHandler(Exception.class)
//	public ModelAndView handleException(Exception e) {
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("exception",e);
//		mav.setViewName("/commonJSP/error.jsp");
//		return mav;
//	}
//	
//}
