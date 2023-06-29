package kr.co.my.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.co.my.vo.HugiVo;
import kr.co.my.vo.ProductVo;

public interface HugiMapper {

	public ProductVo getProduct(String guid);
	public void hugi_ok(HugiVo hvo);
	public void setHugi(int guid);
	public ArrayList<HugiVo> hlist(int index);
	public int getChong();
	public HugiVo hugi_content(String id);
	public void hugi_delete(String id);
	public void chgstate(@Param("state") String state, @Param("id") String id);
	
}
