package kr.co.my.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import kr.co.my.vo.CartVo;
import kr.co.my.vo.ProductVo;
import kr.co.my.vo.GumaeVo;
import kr.co.my.vo.MemberVo;

public interface TicketMapper {

	public ArrayList<ProductVo> tlist(String pcode,int index);
	public int getChong(String pcode);
	public ProductVo tcontent(String pcode);
	public void cart_add(String pcode, String su, String userid, String day);
	public int cart_check(String pcode, String userid, String day);
    public void cart_up(String su, String pcode, String userid, String day);
	
    
    // 구매
    public MemberVo getMember(String userid);
    public void member_phone(String phone, String userid);
    public void gumae_ok(GumaeVo gvo);
    public int getJcode(String jumuncode);

    // 주문
    public GumaeVo getGumae(String jumuncode);
    public ProductVo getProduct(String pcode);
    public ArrayList< HashMap<String,String> > getTotal(String jumuncode);
    public ArrayList< HashMap<String,String> > imsi(String jumuncode);
    
}
