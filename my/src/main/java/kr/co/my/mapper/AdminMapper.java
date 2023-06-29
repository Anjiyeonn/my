package kr.co.my.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import kr.co.my.vo.AttractionVo;
import kr.co.my.vo.EventVo;
import kr.co.my.vo.GongjiVo;
import kr.co.my.vo.HugiVo;
import kr.co.my.vo.MemberVo;

public interface AdminMapper {
	public ArrayList<GongjiVo> admingongji(int index);
	public int getChong();
	public GongjiVo gongji_up(String id);
	public void gongji_up_ok(GongjiVo gvo);
	public void gongji_del(String id);
	public ArrayList<MemberVo> admin_member(int index);
	public int getMChong();
	public void memberout(String id);
	public int getEChong();
	public ArrayList<EventVo> admin_event(int index);
	public EventVo event_up(String id);
	public void event_up_ok(EventVo evo);
	public void event_del(String id);
	public int getAChong();
	public ArrayList<AttractionVo> admin_atr(int index);
	public void atr_del(String id);
	public AttractionVo atr_up(String id);
	public void atr_up_ok(AttractionVo evo);
	public void chgastate(String state,String id);
	public ArrayList<HugiVo> admin_hugi(int index);
	public int getHChong();
	public ArrayList<HashMap<String,String>> admin_ticket(int index);
	public int getGChong();
	public void chgtstate(String id,String state);
	
}
