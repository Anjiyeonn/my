package kr.co.my.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.my.service.MemberService;
import kr.co.my.vo.MemberVo;

@Controller
public class MemberController {

	@Autowired
	@Qualifier("ms")
	private MemberService service;
	
	@RequestMapping("/member/member_input")
	public String member_input()
	{
		return "/member/member_input";
	}
	
	@RequestMapping("/member/userid_check")
	public void userid_check(HttpServletRequest request, PrintWriter out)
	{
		service.userid_check(request,out);
	}
	
	@RequestMapping("/member/member_input_ok")
	public String member_input_ok(MemberVo mvo)
	{
		return service.member_input_ok(mvo);
	}
	
	@RequestMapping("/member/member_view")
	public String member_view(HttpSession session,Model model)
	{
		return service.member_view(session,model);
	}
	
	@RequestMapping("/member/member_edit")
	public String member_edit(HttpSession session,Model model)
	{
		return service.member_edit(session,model);
	}
 
	@RequestMapping("/member/member_edit_ok")
	public String member_edit_ok(MemberVo mvo,HttpSession session)
	{
		return service.member_edit_ok(mvo,session);
	}
	
	@RequestMapping("/member/out")
	public String out(HttpSession session)
	{
		return service.out(session);
	}
	
	
	
	
	// 카트
	@RequestMapping("/member/cart_view")
	public String cart_view(HttpSession session, Model model)
	{
		return service.cart_view(session, model);
	}
	
	@RequestMapping("/member/cart_del")
	public String cart_del(HttpServletRequest request)
	{
		return service.cart_del(request);
	}
	
	@RequestMapping("/member/cart_su")
	public void cart_su(HttpServletRequest request, PrintWriter out, HttpSession session)
	{
		service.cart_su(request, out, session);
	}
	
	
	
	// 주문내역
	@RequestMapping("/member/jumun_view")
	public String jumun_view(HttpSession session, Model model)
	{
		return service.jumun_view(session, model);
	}
	
	@RequestMapping("/member/chgstate")
    public String chgstate(HttpServletRequest request)
    {
		return service.chgstate(request);
    }
	
}