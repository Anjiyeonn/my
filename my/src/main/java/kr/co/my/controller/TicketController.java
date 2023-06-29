package kr.co.my.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.my.service.TicketService;
import kr.co.my.vo.GumaeVo;

@Controller
public class TicketController {
	
	@Autowired
	@Qualifier("ts")
	private TicketService service;
	
	
	@RequestMapping("/ticket/tlist")
	public String plist(HttpServletRequest request, Model model)
	{
		return service.tlist(request, model);
	}
	
	@RequestMapping("/ticket/tcontent")
	public String tcontent(HttpServletRequest request, Model model, HttpSession session)
	{
		return service.tcontent(request, model, session);
	}
	
	@RequestMapping("/ticket/cart_add")
	public void cart_add(HttpServletRequest request, HttpSession session, PrintWriter out)
	{
		service.cart_add(request, session, out);
	}
	
	
	
	// 구매
	@RequestMapping("/ticket/gumae")
	public String gumae(HttpServletRequest request, HttpSession session ,Model model)
	{
		return service.gumae(request, session, model);
	}
	
	@RequestMapping("/ticket/member_phone")
	public void member_phone(HttpServletRequest request, PrintWriter out, 
			HttpSession session)
	{
		service.member_phone(request, out, session);
	}
	
	@RequestMapping("/ticket/gumae_ok")
	public String gumae_ok(GumaeVo gvo, HttpSession session)
	{
		return service.gumae_ok(gvo, session);
	}
	
	
	// 주문
	@RequestMapping("/ticket/jumun")
	public String jumun(HttpServletRequest request, Model model)
	{
		return service.jumun2(request,model);
	}
	
}
