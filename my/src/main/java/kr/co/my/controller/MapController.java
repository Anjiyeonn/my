package kr.co.my.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MapController {
	@RequestMapping("/map/map")
	public String map()
	{
		return "/map/map";
	}
	
	@RequestMapping("/map/maps")
	public String maps()
	{
		return "/map/maps";
	}


}
