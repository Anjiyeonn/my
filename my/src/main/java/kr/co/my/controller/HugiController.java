package kr.co.my.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.my.service.HugiService;
import kr.co.my.vo.HugiVo;

@Controller
public class HugiController {
	
	@Autowired
	@Qualifier("hs")
	private HugiService service;
	
	@RequestMapping("/hugi/hugi")
	public String hugi(HttpServletRequest request, Model model)
	{
		return service.hugi(request, model);
	}
	
	@RequestMapping("/hugi/hugi_ok")
	public String hugi_ok(HttpServletRequest request, HugiVo hvo, HttpSession session) throws Exception
	{
		return service.hugi_ok(request, hvo, session);
	}
	
	@RequestMapping("/hugi/chgstate")
	public String chgstate(HttpServletRequest request)
	{
		return service.chgstate(request);
	}
	
	@RequestMapping("/hugi/hlist")
	public String hlist(HttpServletRequest request, Model model)
	{
		return service.hlist(request, model);
	}
	
	@RequestMapping("/hugi/hugi_content")
	public String hugi_content(HttpServletRequest request, HttpSession session, Model model)
	{
		return service.hugi_content(request, session, model);
	}
	
	@RequestMapping("/hugi/hugi_delete")
	public String hugi_delete(HttpServletRequest request, HugiVo hvo, HttpSession session)
	{
		return service.hugi_delete(request, hvo, session);
	}
	
	
}