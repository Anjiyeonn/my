package kr.co.my.service;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.my.mapper.AdminMapper;
import kr.co.my.vo.AttractionVo;
import kr.co.my.vo.EventVo;
import kr.co.my.vo.GongjiVo;
import kr.co.my.vo.HugiVo;
import kr.co.my.vo.MemberVo;

@Service
@Qualifier("ads")
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminMapper mapper;
	
	@Override
	public String admin_main(HttpSession session) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin"))
		{
			return "/admin/admin_main";
		}
		else
		{
			return "redirect:/main/main";
		}
	}
	
	@Override
	public String admingongji(HttpServletRequest request, Model model,HttpSession session) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin"))
		{
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
			
			ArrayList<GongjiVo> glist=mapper.admingongji(index);
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
			
			return "/admin/admingongji";
		}
		else
		{
			return "redirect:/main/main";
		}
		
		
	}

	@Override
	public String gongji_up(HttpServletRequest request,HttpSession session, Model model) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin"))
		{
			String id=request.getParameter("id");
			String page=request.getParameter("page");
			GongjiVo gvo=mapper.gongji_up(id);
			
			model.addAttribute("gvo", gvo);
			model.addAttribute("page", page);
			
			return "admin/gongji_up";
		}
		else
		{
			return "redirect:/main/main";
		}
	}

	@Override
	public String gongji_up_ok(HttpServletRequest request, GongjiVo gvo) {
		int chk;
		if(request.getParameter("chk")==null)
			chk=0;
		else
			chk=1;
		gvo.setChk(chk);
		
		String page=request.getParameter("page");
		
		mapper.gongji_up_ok(gvo);
		
		return "redirect:/gongji/gongji_content?id="+gvo.getId()+"&page="+page;
		
		

	}

	@Override
	public String gongji_del(HttpServletRequest request, HttpSession session) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin"))
		{
			String id=request.getParameter("id");			
			mapper.gongji_del(id);
			
			return "redirect:/admin/admingongji";
		}
		else
		{
			return "redirect:/main/main";
		}
	}

	@Override
	public String admin_member(HttpSession session, HttpServletRequest request, Model model) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin"))
		{
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
			
			ArrayList<MemberVo> mlist=mapper.admin_member(index);
			model.addAttribute("mlist", mlist);
			
			int pstart=page/10;
			if(page%10==0)
				pstart--;
			pstart=pstart*10+1;
			int pend=pstart+9;
			
			int chong=mapper.getMChong();
			
			if(pend>chong)
				pend=chong;
			
			model.addAttribute("pstart",pstart);
			model.addAttribute("pend",pend);
			model.addAttribute("chong",chong);
			model.addAttribute("page", page);
			
			return "/admin/admin_member";
		}
		else
		{
			return "redirect:/main/main";
		}
	}

	@Override
	public String memberout(HttpServletRequest request) {
		String id=request.getParameter("id");
		mapper.memberout(id);
		
		return "redirect:/admin/admin_member";
	}

	@Override
	public String admin_event(HttpSession session, HttpServletRequest request, Model model) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin"))
		{
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
			
			ArrayList<EventVo> elist=mapper.admin_event(index);
			model.addAttribute("elist", elist);
			
			int pstart=page/10;
			if(page%10==0)
				pstart--;
			pstart=pstart*10+1;
			int pend=pstart+9;
			
			int chong=mapper.getEChong();
			
			if(pend>chong)
				pend=chong;
			
			model.addAttribute("pstart",pstart);
			model.addAttribute("pend",pend);
			model.addAttribute("chong",chong);
			model.addAttribute("page", page);
			
			return "/admin/admin_event";
		}
		else
		{
			return "redirect:/main/main";
		}
	}

	@Override
	public String event_up(HttpServletRequest request, Model model) {
		String id=request.getParameter("id");
		String page=request.getParameter("page");
		
		EventVo evo=mapper.event_up(id);
		
		model.addAttribute("evo",evo);
		model.addAttribute("page",page);
		
		return "/admin/event_up";
	}

	@Override
	public String event_up_ok(HttpServletRequest request, EventVo evo) throws Exception {
		String path=request.getRealPath("/resources/event");
		int size=1024*1024*10;
		MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
		
		
		
		int id=Integer.parseInt(multi.getParameter("id"));
		int page=Integer.parseInt(multi.getParameter("page"));
		String title=multi.getParameter("title");
		String eimg=multi.getFilesystemName("eimg");
		String eimg2=multi.getFilesystemName("eimg2");
		String content=multi.getParameter("content");
		String elistimg=multi.getFilesystemName("elistimg");
		String subtitle=multi.getParameter("subtitle");
		String gigan=multi.getParameter("gigan");
		String map=multi.getFilesystemName("map");
		
		evo.setId(id);
		evo.setTitle(title);
		evo.setEimg(eimg);
		evo.setEimg2(eimg2);
		evo.setContent(content);
		evo.setElistimg(elistimg);
		evo.setSubtitle(subtitle);
		evo.setGigan(gigan);
		evo.setMap(map);
		
		mapper.event_up_ok(evo);
		
		return "redirect:/admin/admin_event?page="+page;
	}

	@Override
	public String event_del(HttpServletRequest request) {
		String id=request.getParameter("id");
		mapper.event_del(id);
		return "redirect:/admin/admin_event";
	}

	@Override
	public String admin_atr(HttpSession session, HttpServletRequest request, Model model) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin"))
		{
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
			
			ArrayList<AttractionVo> alist=mapper.admin_atr(index);
			model.addAttribute("alist", alist);
			
			int pstart=page/10;
			if(page%10==0)
				pstart--;
			pstart=pstart*10+1;
			int pend=pstart+9;
			
			int chong=mapper.getAChong();
			
			if(pend>chong)
				pend=chong;
			
			model.addAttribute("pstart",pstart);
			model.addAttribute("pend",pend);
			model.addAttribute("chong",chong);
			model.addAttribute("page", page);
			
			return "/admin/admin_atr";
		}
		else
		{
			return "redirect:/main/main";
		}
	}

	@Override
	public String atr_del(HttpServletRequest request) {
		String id=request.getParameter("id");
		mapper.atr_del(id);
		
		return "redirect:/admin/admin_atr";
	}

	@Override
	public String atr_up(HttpServletRequest request, Model model) {
		String id=request.getParameter("id");
		String page=request.getParameter("page");
		
		AttractionVo avo=mapper.atr_up(id);
		
		model.addAttribute("avo",avo);
		model.addAttribute("page",page);
		
		return "/admin/atr_up";
	}

	@Override
	public String atr_up_ok(HttpServletRequest request, AttractionVo avo) throws Exception {
		String path=request.getRealPath("/resources/attracion");
		int size=1024*1024*10;
		MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
		
		
		
		int id=Integer.parseInt(multi.getParameter("id"));
		int page=Integer.parseInt(multi.getParameter("page"));
		String title=multi.getParameter("title");
		String aimg=multi.getFilesystemName("aimg");
		String alistimg=multi.getFilesystemName("alistimg");
		String content=multi.getParameter("content");
		int inwon=Integer.parseInt(multi.getParameter("inwon"));
		String time=multi.getParameter("time");
		String jehan=multi.getParameter("jehan");
		String map=multi.getFilesystemName("map");
		
		avo.setId(id);
		avo.setTitle(title);
		avo.setAimg(aimg);
		avo.setAlistimg(alistimg);
		avo.setContent(content);
		avo.setInwon(inwon);
		avo.setTime(time);
		avo.setJehan(jehan);
		avo.setMap(map);
		
		mapper.atr_up_ok(avo);
		
		return "redirect:/admin/admin_atr?page="+page;
	}

	@Override
	public String chgastate(HttpServletRequest request) {
		String state=request.getParameter("state");
		String id=request.getParameter("id");
		
		mapper.chgastate(state,id);
		
		return "redirect:/admin/admin_atr";
	}

	@Override
	public String admin_hugi(HttpServletRequest request, Model model, HttpSession session) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin"))
		{
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
			
			ArrayList<HugiVo> hlist=mapper.admin_hugi(index);
			model.addAttribute("hlist", hlist);
			
			int pstart=page/10;
			if(page%10==0)
				pstart--;
			pstart=pstart*10+1;
			int pend=pstart+9;
			
			int chong=mapper.getHChong();
			
			if(pend>chong)
				pend=chong;
			
			model.addAttribute("pstart",pstart);
			model.addAttribute("pend",pend);
			model.addAttribute("chong",chong);
			model.addAttribute("page", page);
			
			return "/admin/admin_hugi";
		}
		else
		{
			return "redirect:/main/main";
		}
	}

	@Override
	public String admin_ticket(HttpServletRequest request, HttpSession session,Model model) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin"))
		{
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
			
			ArrayList<HashMap<String,String>> glist=mapper.admin_ticket(index);
			model.addAttribute("glist", glist);
			
			int pstart=page/10;
			if(page%10==0)
				pstart--;
			pstart=pstart*10+1;
			int pend=pstart+9;
			
			int chong=mapper.getGChong();
			
			if(pend>chong)
				pend=chong;
			
			model.addAttribute("pstart",pstart);
			model.addAttribute("pend",pend);
			model.addAttribute("chong",chong);
			model.addAttribute("page", page);
			
			return "/admin/admin_ticket";
		}
		else
		{
			return "redirect:/main/main";
		}
		
		}

	@Override
	public String chgtstate(HttpServletRequest request) {
		String id=request.getParameter("id");
		String state=request.getParameter("state");
		mapper.chgtstate(id,state);
		
		return "redirect:/admin/admin_ticket";
	}
	
}
