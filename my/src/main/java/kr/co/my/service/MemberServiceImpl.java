package kr.co.my.service;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.my.mapper.MemberMapper;
import kr.co.my.vo.MemberVo;
import kr.co.my.vo.CartVo;

@Service
@Qualifier("ms")
public class MemberServiceImpl implements MemberService {
    
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public void userid_check(HttpServletRequest request, PrintWriter out) {
		// 입력한 사용자 아이디가 테이블에 존재하는 여부의 값을 전달
		// count()를 통해 아이디가 존재 : 1 , 없으면 0 => out객체를 통해 자바스크립트에 전달
		String userid=request.getParameter("userid");
		out.print( mapper.userid_check(userid) );
	}

	@Override
	public String member_input_ok(MemberVo mvo) {
		mapper.member_input_ok(mvo);
		return "redirect:/login/login?chk=2";
	}

	@Override
	public String member_view(HttpSession session, Model model) {
		String userid=session.getAttribute("userid").toString();
		model.addAttribute("mvo",mapper.member_view(userid));
		return "/member/member_view";
	}

	@Override
	public String member_edit(HttpSession session,Model model) {
		String userid=session.getAttribute("userid").toString();
		model.addAttribute("mvo",mapper.member_edit(userid));
		return "/member/member_edit";
	}

	@Override
	public String member_edit_ok(MemberVo mvo, HttpSession session) {
		String userid=session.getAttribute("userid").toString();
		mvo.setUserid(userid);
		mapper.member_edit_ok(mvo);
		return "redirect:/member/member_view";
	}

	@Override
	public String out(HttpSession session) {
		
		String userid=session.getAttribute("userid").toString();
		mapper.out(userid);
		
		session.invalidate();
		
		return "redirect:/main/main";
	}
	
	
	
	// 카트
	@Override
	public String cart_view(HttpSession session, Model model)
	{
		if(session.getAttribute("userid")==null)
		{
			return "redirect:/login/login";
		}
		else
		{
			String userid=session.getAttribute("userid").toString();
			ArrayList<CartVo> clist=mapper.cart_view(userid);
			model.addAttribute("clist", clist);
			
			// 상품가격, 할인율, 배송비 => 5000,6000,8000
			String proprice="";
			String prohalin="";
			for(int i=0;i<clist.size();i++)
			{
				proprice=proprice+clist.get(i).getPrice()+",";
				int imsi=(int)(clist.get(i).getPrice()*(clist.get(i).getHalin()/100.0));
				prohalin=prohalin+imsi+",";
			}
			
			model.addAttribute("proprice", proprice);
			model.addAttribute("prohalin", prohalin);
			
			return "/member/cart_view";
		}
	}
	
	@Override
	public String cart_del(HttpServletRequest request) 
	{
		String[] id=request.getParameter("id").split(",");
		
		for(int i=0;i<id.length;i++)
		{
			System.out.println(id[i]);
			mapper.cart_del(id[i]);
		}
		
		return "redirect:/member/cart_view";
	}
	
	@Override
	public void cart_su(HttpServletRequest request, PrintWriter out, HttpSession session)
	{
		String su=request.getParameter("su");
		String pcode=request.getParameter("pcode");
	    String userid=session.getAttribute("userid").toString();
	    String day=request.getParameter("day");
	    
	    try
	    {
	        mapper.cart_su(su, pcode, userid, day);
	        out.print("0");
	    }
	    catch(Exception e)
	    {
	    	out.print("1");
	    }
	}
	
	
	// 주문내역
	@Override
	public String jumun_view(HttpSession session, Model model)
	{   
		String userid=session.getAttribute("userid").toString();
		model.addAttribute("tmap",mapper.jumun_view(userid));
		
		return "/member/jumun_view";
	}

	@Override
	public String chgstate(HttpServletRequest request)
	{
		String state=request.getParameter("state");
		String id=request.getParameter("id");
		mapper.chgstate(state,id);
		
		return "redirect:/member/jumun_view";
	}

}