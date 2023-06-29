package kr.co.my.mapper;

import java.util.ArrayList;

import kr.co.my.vo.AttractionVo;
import kr.co.my.vo.GongjiVo;

public interface AttractionMapper {
	public void attraction_ok(AttractionVo avo);
	public ArrayList<AttractionVo> attraction_list(int index);
	public AttractionVo attraction_content(String id);
	public int getChong();
	

}
