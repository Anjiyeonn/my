package kr.co.my.service;

import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.my.mapper.TicketMapper;
import kr.co.my.vo.CartVo;
import kr.co.my.vo.GumaeVo;
import kr.co.my.vo.MemberVo;
import kr.co.my.vo.ProductVo;

@Service
@Qualifier("ts")
public class TicketServiceImpl implements TicketService {

	@Autowired
	private TicketMapper mapper;
	
	@Override
	public String tlist(HttpServletRequest request, Model model)
	{
		String pcode=request.getParameter("pcode");
		
		// 페이지값이 없을 경우
		int page;
		if(request.getParameter("page")==null)
		{
			page=1;
		}
		else
		{
			page=Integer.parseInt(request.getParameter("page"));
		}
		int index=(page-1)*24;
		
		ArrayList<ProductVo> plist=mapper.tlist(pcode,index);
		model.addAttribute("plist",plist);
		
		// pstart, pend, chong, page값을 view에 전달
		int pstart=page/10;
		if(page%10 == 0)
			pstart--;
		pstart=pstart*10+1;
		int pend=pstart+9;
		
		int chong=mapper.getChong(pcode);
		
		if(pend>chong)
			pend=chong;
		
		model.addAttribute("pstart",pstart);
		model.addAttribute("pend",pend);
		model.addAttribute("chong",chong);
		model.addAttribute("page",page);
		model.addAttribute("pcode",pcode);
		return "/ticket/tlist";
	}
	
	@Override
	public String tcontent(HttpServletRequest request, Model model, HttpSession session)
	{
		if(session.getAttribute("userid")==null)
		{
			return "redirect:/login/login";
		}
		else
		{
		    String pcode=request.getParameter("pcode");
		    ProductVo pvo=mapper.tcontent(pcode);
		    model.addAttribute("pvo",pvo);
		
		    return "/ticket/tcontent";
		}
	}
	
	@Override
	public void cart_add(HttpServletRequest request, HttpSession session, PrintWriter out)
	{
		String pcode=request.getParameter("pcode");
		String su=request.getParameter("su");
		String day=request.getParameter("day");
		
		if(session.getAttribute("userid")!=null)
		{
			String userid=session.getAttribute("userid").toString();
			try
			{
				int cnt=mapper.cart_check(pcode, userid, day);
				
				if(cnt==1)
				{
					mapper.cart_up(su, pcode, userid, day);
				}
				else
				{
					mapper.cart_add(pcode, su, userid, day);
				}
				out.print("0");
			}
			catch(Exception e)
			{
				out.print("1");
			}
		}
	}
	
	
	
	// 구매
	@Override
	public String gumae(HttpServletRequest request, HttpSession session, Model model)
	{
		if(session.getAttribute("userid")==null)
			return "/login/login";
		
		String userid=session.getAttribute("userid").toString();
		MemberVo mvo=mapper.getMember(userid);
		model.addAttribute("mvo",mvo);
		
		String[] pcode=request.getParameter("pcode").split(",");
		String[] su=request.getParameter("su").split(",");
		
		String[] day=request.getParameter("day").split(",");
		model.addAttribute("day",day);
		
		ArrayList<ProductVo> plist=new ArrayList<ProductVo>();
		int pprice=0;  // 총상품가격
		int payprice=0;// 결제금액
		int psu=0;
		String privateprice=""; 
		for(int i=0;i<pcode.length;i++)
		{
			ProductVo pvo=mapper.tcontent(pcode[i]);
			
			pvo.setSu( Integer.parseInt(su[i]) );
			pvo.setDay(day[i]);
			plist.add(pvo);
			
			// 총상품가격
			int imsi=( pvo.getPrice()-(int)( pvo.getPrice()*(pvo.getHalin())/100.0 ))*pvo.getSu();
			pprice=pprice+imsi;
			psu=psu+pvo.getSu();
			
			privateprice=privateprice+(imsi)+",";
			;
		}
		payprice=pprice;
		
		
		model.addAttribute("pprice",pprice);
		model.addAttribute("payprice",payprice);
		model.addAttribute("privateprice",privateprice);
		model.addAttribute("plist",plist);
		model.addAttribute("psu",psu);
		model.addAttribute("pcode",request.getParameter("pcode"));
		model.addAttribute("su",request.getParameter("su"));
		model.addAttribute("day",request.getParameter("day"));
		
		
		LocalDateTime today=LocalDateTime.now();
		LocalDateTime xday=today.plusDays(1);
		int y=xday.getYear();
		int m=xday.getMonthValue();
		int d=xday.getDayOfMonth();
		int h=xday.getHour();
		int mm=xday.getMinute();
		int s=xday.getSecond();
		String gihan=y+"년 "+m+"월 "+d+"일 "+h+"시 "+mm+"분 까지";
		model.addAttribute("gihan",gihan);
		
		return "/ticket/gumae";
	}

	@Override
	public void member_phone(HttpServletRequest request, PrintWriter out, HttpSession session)
	{
		try
		{
		    String phone=request.getParameter("phone");
		    String userid=session.getAttribute("userid").toString();
		
		    mapper.member_phone(phone,userid);
		    out.print("0");
		}
		catch(Exception e)
		{
			out.print("1");
		}
	}

	
	@Override
	public String gumae_ok(GumaeVo gvo, HttpSession session)
	{
		//주문코드를 생성
		//  j년월일0000
		LocalDate today=LocalDate.now();
		int y=today.getYear();
		int m=today.getMonthValue();
		String mm=m+"";
		if(mm.length()==1)
			mm="0"+mm;
		
		int d=today.getDayOfMonth();
		String dd=d+"";
		if(dd.length()==1)
			dd="0"+dd;
		
		String jumuncode="j"+y+mm+dd;
        int num=mapper.getJcode(jumuncode);
        String code=String.format("%04d", num);
        jumuncode=jumuncode+code;
        
		gvo.setJumuncode(jumuncode);
		String userid=session.getAttribute("userid").toString();
		gvo.setUserid(userid);
		
		String[] pcode=gvo.getPcode().split(",");
		String[] su=gvo.getSu2().split(",");
		String[] privateprice=gvo.getPrivateprice().split(",");
		String[] day=gvo.getDay().split(",");
		for(int i=0;i<pcode.length;i++)
		{
			gvo.setDay(day[i]);
			gvo.setPcode(pcode[i]);
			gvo.setSu( Integer.parseInt(su[i]) );
			gvo.setCprice( Integer.parseInt(privateprice[i]) );
			mapper.gumae_ok(gvo);
		}
		
		return "redirect:/ticket/jumun?jumuncode="+jumuncode;
	}
	
	@Override
	public String jumun(HttpServletRequest request, Model model) {
		 
		// gumae테이블 읽기
		String jumuncode=request.getParameter("jumuncode");
		GumaeVo gvo=mapper.getGumae(jumuncode);
		// product테이블 읽기
		ProductVo pvo=mapper.getProduct(gvo.getPcode());
		
		model.addAttribute("gvo",gvo);
		model.addAttribute("pvo",pvo);
		
		return "/ticket/jumun";
	}

	@Override
	public String jumun2(HttpServletRequest request, Model model) {
		String jumuncode=request.getParameter("jumuncode");
        ArrayList< HashMap<String,String> > tmap=mapper.getTotal(jumuncode);
        model.addAttribute("tmap",tmap);
        
        int totalcprice=0; // 총결제금액
        int totalprice=0;  // 총상품금액
        int totalhalin=0; // 총할인금액
        // 총상품가격, 총배송비, 총결제금액구하기
        for(int i=0;i<tmap.size();i++)
        {
        	// map.get(key) 가져온값은 String이지만
        	// String.valueOf(map.get(key)) 를 통해서 변경후 사용
        	
        	int imsi=Integer.parseInt( String.valueOf( tmap.get(i).get("price") ) );  // 상품원래가격
        	int halin=Integer.parseInt( String.valueOf( tmap.get(i).get("halin") ) ); // 할인율
        	halin=(int)(imsi* (halin/100.0) );  // 할인금액
        	System.out.println(imsi+" : "+halin);
        	int su=Integer.parseInt( String.valueOf( tmap.get(i).get("su")));
        	totalprice=totalprice+(imsi-halin)*su;   // 상품금액
        	
        	totalcprice=totalcprice+ Integer.parseInt( String.valueOf( tmap.get(i).get("cprice") ));  // 결제금액
        }
        
        model.addAttribute("totalprice",totalprice);
        model.addAttribute("totalcprice",totalcprice);
        model.addAttribute("totalhalin",totalhalin);
        
		return "/ticket/jumun";
		
	}
	
}
