package kr.co.my.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.my.service.AttractionService;

@Controller
public class AttractionController {
	
	@Autowired
	@Qualifier("as")
	private AttractionService service;
	
	@RequestMapping("attraction/attraction_add")
	public String attraction_add()
	{
		return "/attraction/attraction_add";
	}
	
	@RequestMapping("attraction/attraction_ok")
	public String attraction_ok(HttpServletRequest request) throws Exception
	{
		return service.attraction_ok(request);
	}
	
	@RequestMapping("attraction/attraction_list")
	public String attraction_list(HttpServletRequest request, Model model)
	{
		return service.attraction_list(request,model);
	}
	
	@RequestMapping("attraction/attraction_content")
	public String attraction_content(HttpServletRequest request, Model model)
	{
		return service.attraction_content(request,model);
	}

}
