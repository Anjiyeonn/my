package kr.co.my.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.my.mapper.GongjiMapper;
import kr.co.my.vo.GongjiVo;

@Service
@Qualifier("gs")
public class GongjiServiceImpl implements GongjiService{
	
	@Autowired
	private GongjiMapper mapper;

	@Override
	public String gongji_write(HttpSession session) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin"))
		{
			return "/gongji/gongji_write";
		}
		else
		{
			return "redirect:/main/main";
		}
	}
	
	@Override
	public String gongji_ok(HttpServletRequest request,GongjiVo gvo) {
		int chk;
		if(request.getParameter("chk")==null)
			chk=0;
		else
			chk=1;
		gvo.setChk(chk);
		
		mapper.gongji_ok(gvo);
		
		return "redirect:/admin/admingongji";
	}

	@Override
	public String gongji_list(HttpServletRequest request,Model model) {
		int page;
		if(request.getParameter("page")==null)
		{
			page=1;
		}
		else
		{
			page=Integer.parseInt(request.getParameter("page"));
		}
		int index=(page-1)*10;
		
		ArrayList<GongjiVo> glist=mapper.gongji_list(index);
		model.addAttribute("glist", glist);
		
		int pstart=page/10;
		if(page%10==0)
			pstart--;
		pstart=pstart*10+1;
		int pend=pstart+9;
		
		int chong=mapper.getChong();
		
		if(pend>chong)
			pend=chong;
		
		model.addAttribute("pstart",pstart);
		model.addAttribute("pend",pend);
		model.addAttribute("chong",chong);
		model.addAttribute("page", page);
		
		return "/gongji/gongji_list";
	}

	@Override
	public String gongji_content(HttpServletRequest request, Model model) {
		String page=request.getParameter("page");
		String id=request.getParameter("id");
		GongjiVo gvo=mapper.gongji_content(id);
		String content=gvo.getContent().replace("\r\n", "<br>");
		gvo.setContent(content);
		model.addAttribute("gvo",gvo);
		model.addAttribute("page", page);
		
		return "/gongji/gongji_content";
	}



}
