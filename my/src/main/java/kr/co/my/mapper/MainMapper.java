package kr.co.my.mapper;

import java.util.ArrayList;

import kr.co.my.vo.EventVo;
import kr.co.my.vo.GongjiVo;

public interface MainMapper {
	public ArrayList<GongjiVo> main_gongji();
	public ArrayList<EventVo> main_event();

}
