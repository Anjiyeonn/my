package kr.co.my.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.my.service.GongjiService;
import kr.co.my.vo.GongjiVo;

@Controller
public class GongjiController {
	
	@Autowired
	@Qualifier("gs")
	private GongjiService service;
	
	@RequestMapping("/gongji/gongji_write")
	public String gongji_write(HttpSession session)
	{
		return service.gongji_write(session);
	}
	
	@RequestMapping("/gongji/gongji_ok")
	public String gongji_ok(HttpServletRequest request,GongjiVo gvo)
	{
		return service.gongji_ok(request,gvo);
	}
	
	@RequestMapping("/gongji/gongji_list")
	public String gongji_list(HttpServletRequest request,Model model)
	{
		return service.gongji_list(request,model);
	}
	
	@RequestMapping("gongji/gongji_content")
	public String gongji_content(HttpServletRequest request,Model model)
	{
		return service.gongji_content(request,model);
	}
	

}
