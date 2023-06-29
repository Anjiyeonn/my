package kr.co.my.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.my.mapper.BoardMapper;

@Service
@Qualifier("bs")
public class BoardServiceImpl implements BoardService{
	
	
}
