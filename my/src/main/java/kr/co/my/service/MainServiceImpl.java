package kr.co.my.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.my.mapper.MainMapper;
import kr.co.my.vo.EventVo;
import kr.co.my.vo.GongjiVo;

@Service
@Qualifier("mas")
public class MainServiceImpl implements MainService {
	
	@Autowired
	private MainMapper mapper;

	@Override
	public String main(Model model) {
		ArrayList<GongjiVo> glist=mapper.main_gongji();
		model.addAttribute("glist", glist);
		
		ArrayList<EventVo> elist=mapper.main_event();
		model.addAttribute("elist",elist);
		
		return "/main/main";
	}
}
