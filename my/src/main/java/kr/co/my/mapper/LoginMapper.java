package kr.co.my.mapper;

import kr.co.my.vo.MemberVo;

public interface LoginMapper {
	
    public MemberVo login_ok(MemberVo mvo);
    public String userid_search(String name, String email);
    public String pwd_search(String name, String email, String userid);
    
}
