package kr.co.my.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.my.vo.MemberVo;

public interface MemberService {
	
   public void userid_check(HttpServletRequest request,PrintWriter out);
   public String member_input_ok(MemberVo mvo);
   public String member_view(HttpSession session,Model model);
   public String member_edit(HttpSession session,Model model);
   public String member_edit_ok(MemberVo mvo, HttpSession session);
   public String out(HttpSession session);
   
   // 카트
   public String cart_view(HttpSession session, Model model);
   public String cart_del(HttpServletRequest request);
   public void cart_su(HttpServletRequest request, PrintWriter out, HttpSession session);
   
   // 주문내역
   public String jumun_view(HttpSession session, Model model);
   public String chgstate(HttpServletRequest request);
}