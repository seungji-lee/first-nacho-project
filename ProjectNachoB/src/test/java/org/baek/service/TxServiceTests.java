package org.baek.service;

import org.baek.domain.AuthVO;
import org.baek.domain.MemberVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class TxServiceTests {
	
	@Setter(onMethod_= @Autowired)
	TxService service;
	
	// 통합 성공
	@Test
	public void testJoin() {
		
		MemberVO vo =  new MemberVO();
		vo.setMid("tranTest01");
		vo.setMpw("123123123");
		vo.setMchpw("123123123");
		vo.setMname("트테스터01");
		vo.setMemail("tran1@goot.com");
		
		service.addMember(vo);
		
	}
	
}
