package kr.co.my.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface EventService {

	public String event_ok(HttpServletRequest request) throws Exception;
	public String elist(HttpServletRequest request, Model model);
	public String event_page(HttpServletRequest request, Model model);
}
