package kr.co.my.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.ui.Model;

import kr.co.my.vo.AttractionVo;
import kr.co.my.vo.EventVo;
import kr.co.my.vo.GongjiVo;

public interface AdminService {
	public String admin_main(HttpSession session);
	public String admingongji(HttpServletRequest request, Model model, HttpSession session);
	public String gongji_up(HttpServletRequest request, HttpSession session, Model model);
	public String gongji_up_ok(HttpServletRequest request, GongjiVo gvo);
	public String gongji_del(HttpServletRequest request,HttpSession session);
	public String admin_member(HttpSession session,HttpServletRequest request,Model model);
	public String memberout(HttpServletRequest request);
	public String admin_event(HttpSession session, HttpServletRequest request, Model model);
	public String event_up(HttpServletRequest request, Model model);
	public String event_up_ok(HttpServletRequest request, EventVo evo) throws Exception;
	public String event_del(HttpServletRequest request);
	public String admin_atr(HttpSession session, HttpServletRequest request, Model model);
	public String atr_del(HttpServletRequest request);
	public String atr_up(HttpServletRequest request, Model model);
	public String atr_up_ok(HttpServletRequest request, AttractionVo avo) throws Exception;
	public String chgastate(HttpServletRequest request);
	public String admin_hugi(HttpServletRequest request, Model model, HttpSession session);
	public String admin_ticket(HttpServletRequest request, HttpSession session, Model model);
	public String chgtstate(HttpServletRequest request);
}
