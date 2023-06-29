package kr.co.my.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface ScheduleService {
	public String schedule(HttpServletRequest request,Model model);
	public String close(Model model);

}
