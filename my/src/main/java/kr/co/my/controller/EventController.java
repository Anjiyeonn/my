package kr.co.my.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.my.service.EventService;

@Controller
public class EventController {

	@Autowired
	@Qualifier("es")
	private EventService service;
	
	@RequestMapping("/event/event_add")
	public String event_add()
	{
		return "/event/event_add";
	}
	
	@RequestMapping("/event/event_ok")
	public String event_ok(HttpServletRequest request) throws Exception
	{
		return service.event_ok(request);
	}
	
	@RequestMapping("/event/elist")
	public String elist(HttpServletRequest request, Model model)
	{
		return service.elist(request, model);
	}
	
	@RequestMapping("event/event_page")
	public String event_page(HttpServletRequest request, Model model)
	{
		return service.event_page(request,model);
	}
	
}
