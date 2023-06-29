package kr.co.my.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.my.mapper.AttractionMapper;
import kr.co.my.vo.AttractionVo;

@Service
@Qualifier("as")
public class AttractionServiceImpl implements AttractionService {
	
	@Autowired
	private AttractionMapper mapper;

	@Override
	public String attraction_ok(HttpServletRequest request) throws Exception {
		
		String path=request.getRealPath("/resources/attraction");
		int size=1024*1024*10;
		MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
		
		String title=multi.getParameter("title");
		String aimg=multi.getFilesystemName("aimg");
		String alistimg=multi.getFilesystemName("alistimg");
		String content=multi.getParameter("content");
		int inwon=Integer.parseInt(multi.getParameter("inwon"));
		String time=multi.getParameter("time");
		String jehan=multi.getParameter("jehan");
		String map=multi.getFilesystemName("map");
		
		AttractionVo avo=new AttractionVo();
		avo.setTitle(title);
		avo.setAimg(aimg);
		avo.setAlistimg(alistimg);
		avo.setContent(content);
		avo.setInwon(inwon);
		avo.setTime(time);
		avo.setJehan(jehan);
		avo.setMap(map);
		
		mapper.attraction_ok(avo);
				
		return "redirect:/admin/admin_atr";
	}

	@Override
	public String attraction_list(HttpServletRequest request,Model model) {
		int page;
		if(request.getParameter("page")==null)
		{
			page=1;
		}
		else
		{
			page=Integer.parseInt(request.getParameter("page"));
		}
		int index=(page-1)*15;
		
		ArrayList<AttractionVo> alist=mapper.attraction_list(index);
		model.addAttribute("alist", alist);
		
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
		
		return "/attraction/attraction_list";
	}

	@Override
	public String attraction_content(HttpServletRequest request, Model model) {
		String id=request.getParameter("id");
		AttractionVo avo=mapper.attraction_content(id);
		String content=avo.getContent().replace("\r\n", "<br>");
		avo.setContent(content);
		model.addAttribute("avo", avo);
		
		return "/attraction/attraction_content";
	}

}
