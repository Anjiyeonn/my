package kr.co.my.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;

import kr.co.my.vo.MemberVo;
import kr.co.my.vo.CartVo;

public interface MemberMapper {
	
    public int userid_check(String userid);
    public void member_input_ok(MemberVo mvo);
    public MemberVo member_view(String userid);
    public MemberVo member_edit(String userid);
    public void member_edit_ok(MemberVo mvo);
	public void out(String userid);
	
	
	// 카트
    public ArrayList<CartVo> cart_view(String userid);
    public void cart_del(String id);
    public int cart_check(String pcode, String userid, String day);
    public void cart_up(String pcode, String userid, String day);
    public void cart_su(String su, String pcode, String userid, String day);
    
    
    // 주문내역
    public ArrayList< HashMap<String,String> > jumun_view(String userid);
    public void chgstate(@Param("state") String state, @Param("id") String id);
	
}