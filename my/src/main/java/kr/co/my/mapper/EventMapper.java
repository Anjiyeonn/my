package kr.co.my.mapper;

import java.util.ArrayList;

import kr.co.my.vo.EventVo;

public interface EventMapper {

	public void event_ok(EventVo evo);
	public ArrayList<EventVo> elist(int index);
	public int getChong();
	public EventVo event_page(String id);
}
