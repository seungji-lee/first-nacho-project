package org.baek.service;

import org.baek.domain.AuthVO;
import org.baek.domain.MemberVO;
import org.baek.mapper.AuthMapper;
import org.baek.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service // 계층 구조상 주로 비즈니스 영역(선생님도 말씀하심)을 담당하는 객체임을 표시하기 위해서 사용
@AllArgsConstructor
public class TxServiceImpl implements TxService{
	
	@Setter(onMethod_=@Autowired)
	MemberMapper mMapper;
	
	@Setter(onMethod_=@Autowired)
	AuthMapper aMapper;
	
//	@Autowired
//	BCryptPasswordEncoder pwencoder;
	
	@Transactional
	@Override
	public void addMember(MemberVO vo) {
		
		log.info("*********************mapper1*************************");
//		String rowPw = vo.getMpw();
//		String encodedPw = pwencoder.encode(rowPw);
//		vo.setMpw(encodedPw);
		
		mMapper.register(vo);
		
		log.info("*********************mapper2*************************");
		AuthVO avo = new AuthVO();
		avo.setAuth("ROLE_MEMBER");
		avo.setMid(vo.getMid());
						
		aMapper.register(avo);
		
		log.info("***********************end**************************");
	}
	
}
