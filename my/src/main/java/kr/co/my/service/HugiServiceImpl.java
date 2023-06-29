package kr.co.my.service;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.my.mapper.HugiMapper;
import kr.co.my.vo.EventVo;
import kr.co.my.vo.GumaeVo;
import kr.co.my.vo.HugiVo;
import kr.co.my.vo.ProductVo;

@Controller
@Qualifier("hs")
public class HugiServiceImpl implements HugiService {
	
	@Autowired
	private HugiMapper mapper;

	@Override
	public String hugi(HttpServletRequest request, Model model) {
		
		String guid=request.getParameter("guid");
		ProductVo pvo=mapper.getProduct(guid);
		model.addAttribute("pvo",pvo);
		model.addAttribute("guid",guid);
		
		return "hugi/hugi";
	}
	
	@Override
	public String chgstate(HttpServletRequest request) {
		
		String state=request.getParameter("state");
		String id=request.getParameter("id");
		mapper.chgstate(state,id);
		
		return "redirect:/member/jumun_view";
	}
	
	@Override
	public String hugi_ok(HttpServletRequest request, HugiVo hvo, HttpSession session) throws Exception {
		
		String userid=session.getAttribute("userid").toString();
		hvo.setUserid(userid);
		
		String path=request.getRealPath("/resources/hugi");
    	int size=1024*1024*10;
    	MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
		String fname1=multi.getFilesystemName("fname1");
		String fname2=multi.getFilesystemName("fname2");
		String title=multi.getParameter("title");
		String content=multi.getParameter("content");
		int guid=Integer.parseInt(multi.getParameter("guid"));
		String pcode=multi.getParameter("pcode");
		
		hvo.setTitle(title);
		hvo.setContent(content);
		hvo.setFname1(fname1);
		hvo.setFname2(fname2);
		hvo.setGuid(guid);
		hvo.setPcode(pcode);
		
		mapper.hugi_ok(hvo);
		mapper.setHugi(hvo.getGuid());
		
		
		return "redirect:/hugi/hlist";
	}

	@Override
	public String hlist(HttpServletRequest request, Model model) {
		
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
		
		ArrayList<HugiVo> hlist=mapper.hlist(index);
		model.addAttribute("hlist", hlist);
		
		int pstart=page/10;
		if(page%10 == 0)
			pstart--;
		pstart=pstart*10+1;
		int pend=pstart+9;
		
		int chong=mapper.getChong();
		
		if(pend>chong)
			pend=chong;
		
		model.addAttribute("pstart",pstart);
		model.addAttribute("pend",pend);
		model.addAttribute("chong",chong);
		model.addAttribute("page",page);
		
		return "/hugi/hlist";
	}

	@Override
	public String hugi_content(HttpServletRequest request, HttpSession session, Model model) {
		
		String id=request.getParameter("id");
		String page=request.getParameter("page");
		HugiVo hvo=mapper.hugi_content(id);
		
		String content=hvo.getContent().replace("\r\n", "<br>");
		hvo.setContent(content);
		
		model.addAttribute("hvo",hvo);
		model.addAttribute("page",page);
		
		return "/hugi/hugi_content";
	}

	@Override
	public String hugi_delete(HttpServletRequest request, HugiVo hvo, HttpSession session) {
		
		if(session.getAttribute("userid") == null)
			return "redirect:/login/login";
		
		String userid=session.getAttribute("userid").toString();
		if(session.getAttribute("userid").equals(userid))
		{
			String id=request.getParameter("id");
			mapper.hugi_delete(id);
			
			return "redirect:/hugi/hlist";
		}
		
		else
			return "redirect:/hugi/hugi_content?id="+hvo.getId();
	}
	
	

}
