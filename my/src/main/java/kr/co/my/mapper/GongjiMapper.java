package kr.co.my.mapper;

import java.util.ArrayList;

import kr.co.my.vo.GongjiVo;

public interface GongjiMapper {
	public void gongji_ok(GongjiVo gvo);
	public ArrayList<GongjiVo> gongji_list(int index);
	public GongjiVo gongji_content(String id);
	public int getChong();

}
