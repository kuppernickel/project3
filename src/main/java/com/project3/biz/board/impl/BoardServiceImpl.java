package com.project3.biz.board.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl {
	@Autowired
	private BoardDAO boardDAO;
}
