package kr.co.my.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.my.vo.GongjiVo;

public interface GongjiService {
	public String gongji_write(HttpSession session);
	public String gongji_ok(HttpServletRequest request,GongjiVo gvo);
	public String gongji_list(HttpServletRequest request,Model model);
	public String gongji_content(HttpServletRequest request,Model model);
}
