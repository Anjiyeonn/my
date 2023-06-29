package kr.co.my.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface AttractionService {
	public String attraction_ok(HttpServletRequest request) throws Exception;
	public String attraction_list(HttpServletRequest request, Model model);
	public String attraction_content(HttpServletRequest request, Model model);
}
