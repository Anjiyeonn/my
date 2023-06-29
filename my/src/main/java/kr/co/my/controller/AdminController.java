package kr.co.my.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.my.service.AdminService;
import kr.co.my.vo.AttractionVo;
import kr.co.my.vo.EventVo;
import kr.co.my.vo.GongjiVo;

@Controller
public class AdminController {
	@Autowired
	@Qualifier("ads")
	private AdminService service;
	
	@RequestMapping("/admin/admin_main")
	public String admin_main(HttpSession session)
	{
		return service.admin_main(session);
	}
	
	@RequestMapping("/admin/admingongji")
	public String admingongji(HttpServletRequest request,Model model, HttpSession session)
	{
		return service.admingongji(request,model,session);
	}
	@RequestMapping("/admin/gongji_up")
	public String gongji_up(HttpServletRequest request, HttpSession session, Model model)
	{
		return service.gongji_up(request,session,model);
	}
	@RequestMapping("/admin/gongji_up_ok")
	public String gongji_up_ok(HttpServletRequest request,GongjiVo gvo)
	{
		return service.gongji_up_ok(request,gvo);
	}
	@RequestMapping("/admin/gongji_del")
	public String gongji_del(HttpServletRequest request,HttpSession session)
	{
		return service.gongji_del(request,session);
	}
	@RequestMapping("/admin/admin_member")
	public String admin_member(HttpSession session, HttpServletRequest request, Model model)
	{
		return service.admin_member(session,request,model);
	}
	@RequestMapping("/admin/memberout")
	public String memberout(HttpServletRequest request)
	{
		return service.memberout(request);
	}
	@RequestMapping("/admin/admin_event")
	public String admin_event(HttpSession session,HttpServletRequest request, Model model)
	{
		return service.admin_event(session,request,model);
	}
	
	@RequestMapping("/admin/event_up")
	public String event_up(HttpServletRequest request, Model model)
	{
		return service.event_up(request,model);
	}
	
	@RequestMapping("/admin/event_up_ok")
	public String event_up_ok(HttpServletRequest request, EventVo evo) throws Exception
	{
		return service.event_up_ok(request,evo);
	}
	
	@RequestMapping("/admin/event_del")
	public String event_del(HttpServletRequest request)
	{
		return service.event_del(request);
	}
	
	@RequestMapping("/admin/admin_atr")
	public String admin_atr(HttpSession session, HttpServletRequest request, Model model)
	{
		return service.admin_atr(session,request,model);
	}
	
	@RequestMapping("/admin/atr_del")
	public String atr_del(HttpServletRequest request)
	{
		return service.atr_del(request);
	}
	
	@RequestMapping("/admin/atr_up")
	public String atr_up(HttpServletRequest request,Model model)
	{
		return service.atr_up(request,model);
	}
	
	@RequestMapping("/admin/atr_up_ok")
	public String atr_up_ok(HttpServletRequest request, AttractionVo avo) throws Exception
	{
		return service.atr_up_ok(request,avo);
	}
	
	@RequestMapping("/admin/chgastate")
	public String chgastate(HttpServletRequest request)
	{
		return service.chgastate(request);
	}
	
	@RequestMapping("/admin/admin_hugi")
	public String admin_hugi(HttpServletRequest request,Model model, HttpSession session)
	{
		return service.admin_hugi(request,model,session);
	}
	
	@RequestMapping("/admin/admin_ticket")
	public String admin_ticket(HttpServletRequest request, HttpSession session, Model model)
	{
		return service.admin_ticket(request,session,model);
	}
	@RequestMapping("/admin/chgtstate")
	public String chgtstate(HttpServletRequest request)
	{
		return service.chgtstate(request);
	}
}
