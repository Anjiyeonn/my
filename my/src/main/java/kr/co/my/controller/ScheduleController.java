package kr.co.my.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.my.service.ScheduleService;
import kr.co.my.vo.AttractionVo;

@Controller
public class ScheduleController {
	@Autowired
	@Qualifier("ss")
	private ScheduleService service;
	
	@RequestMapping("/schedule/schedule")
	public String schedule(HttpServletRequest request,Model model)
	{
		return service.schedule(request,model);
	}
	
	@RequestMapping("/schedule/close")
	public String close(Model model)
	{
		return service.close(model);
	}
	
	@RequestMapping("/schedule/test")
	public String test()
	{
		return "/schedule/test";
	}
}
