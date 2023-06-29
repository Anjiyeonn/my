package kr.co.my.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.my.vo.GumaeVo;

public interface TicketService {
	
	public String tlist(HttpServletRequest request, Model model);
	public String tcontent(HttpServletRequest request, Model model, HttpSession session);
	public void cart_add(HttpServletRequest request, HttpSession session, PrintWriter out);
	
	
	// 구매
	public String gumae(HttpServletRequest request, HttpSession session, Model model);
    public void member_phone(HttpServletRequest request, PrintWriter out, HttpSession session);
    public String gumae_ok(GumaeVo gvo, HttpSession session);
    
    // 주문
    public String jumun(HttpServletRequest request,Model model);
    public String jumun2(HttpServletRequest request,Model model);
    
}
