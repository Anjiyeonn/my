package kr.co.my.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.my.mapper.EventMapper;
import kr.co.my.vo.EventVo;

@Service
@Qualifier("es")
public class EventServiceImpl implements EventService {
	
	@Autowired
	private EventMapper mapper;
	
	@Override
	public String event_ok(HttpServletRequest request) throws Exception
	{
		String path=request.getRealPath("/resources/event");
		int size=1024*1024*10;
		MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
		
		String title=multi.getParameter("title");
		String eimg=multi.getFilesystemName("eimg");
		String eimg2=multi.getFilesystemName("eimg2");
		String content=multi.getParameter("content");
		String elistimg=multi.getFilesystemName("elistimg");
		String subtitle=multi.getParameter("subtitle");
		String gigan=multi.getParameter("gigan");
		String map=multi.getFilesystemName("map");
		
		EventVo evo=new EventVo();
		evo.setTitle(title);
		evo.setEimg(eimg);
		evo.setEimg2(eimg2);
		evo.setContent(content);
		evo.setElistimg(elistimg);
		evo.setSubtitle(subtitle);
		evo.setGigan(gigan);
		evo.setMap(map);
		
		mapper.event_ok(evo);
				
		return "redirect:/event/elist";
	}
	
	@Override
	public String elist(HttpServletRequest request, Model model)
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
		int index=(page-1)*24;
		
		ArrayList<EventVo> elist=mapper.elist(index);
		model.addAttribute("elist", elist);
		
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
		
		return "/event/elist";
	}
	
	@Override
	public String event_page(HttpServletRequest request, Model model)
	{
		String id=request.getParameter("id");
		EventVo evo=mapper.event_page(id);
		String content=evo.getContent().replace("\r\n", "<br>");
		
		evo.setContent(content);
		
		model.addAttribute("evo", evo);
		
		return "/event/event_page";
	}

}
