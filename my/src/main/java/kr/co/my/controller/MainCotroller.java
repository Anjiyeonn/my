package kr.co.my.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.my.service.MainService;

@Controller
public class MainCotroller {
	@Autowired
	@Qualifier("mas")
	private MainService service;
	
	@RequestMapping("/main/main")
	public String main(Model model)
	{
		return service.main(model);
	}
	
	@RequestMapping("/main/uni")
	public String uni()
	{
		return "/main/uni";
	}
	
	@RequestMapping("/main/enjoy")
	public String enjoy()
	{
		return "/main/enjoy";
	}
	
}
