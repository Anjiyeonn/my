package kr.co.my.service;

import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.my.mapper.ScheduleMapper;
import kr.co.my.vo.AttractionVo;

@Service
@Qualifier("ss")
public class ScheduleServiceImpl implements ScheduleService {
	
	@Autowired
	private ScheduleMapper mapper;

	@Override
	public String schedule(HttpServletRequest request,Model model) {
		int year,month;
		
		if(request.getParameter("year")==null)
		{
			LocalDate today=LocalDate.now();
			year=today.getYear();
			month=today.getMonthValue();
		}
		else
		{
			year=Integer.parseInt(request.getParameter("year"));
			month=Integer.parseInt(request.getParameter("month"));
			
			if(month==0)
			{
				year--;
				month=12;
			}
			if(month==13)
			{
				year++;
				month=1;
			}
		}
		LocalDate xday=LocalDate.of(year, month, 1);
		int chong=xday.lengthOfMonth();
		
		int yoil=xday.getDayOfWeek().getValue();
		if(yoil==7)
			yoil=0;
		int ju=(int)Math.ceil((yoil+chong)/7.0);
		int day=1;
		
		LocalDate today=LocalDate.now();
		LocalDate prevday=LocalDate.of(year, month, day);
		
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("ju",ju);
		model.addAttribute("yoil",yoil);
		model.addAttribute("chong", chong);
		model.addAttribute("day", day);
		model.addAttribute("today",today);
		model.addAttribute("prevday",prevday);
		
		return "/schedule/schedule";
	}

	@Override
	public String close(Model model) {
		ArrayList<AttractionVo> alist=mapper.close();
		model.addAttribute("alist", alist);
		return "/schedule/close";
	}
}
