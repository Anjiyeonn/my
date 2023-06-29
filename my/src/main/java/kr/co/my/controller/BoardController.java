package kr.co.my.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.my.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	@Qualifier("bs")
	private BoardService service;
	

}
