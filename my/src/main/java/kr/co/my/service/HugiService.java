package kr.co.my.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.my.vo.HugiVo;

public interface HugiService {

	public String hugi(HttpServletRequest request, Model model);
	public String hugi_ok(HttpServletRequest request, HugiVo hvo, HttpSession session) throws Exception;
	public String hlist(HttpServletRequest request, Model model);
	public String hugi_content(HttpServletRequest request, HttpSession session, Model model);
	public String hugi_delete(HttpServletRequest request, HugiVo hvo, HttpSession session);
	public String chgstate(HttpServletRequest request);

	
}
