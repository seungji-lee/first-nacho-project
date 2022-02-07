package org.baek.security;

import org.baek.domain.AuthVO;
import org.baek.mapper.AuthMapper;
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
public class AuthMapperTest {
	
	@Setter(onMethod_ = @Autowired)
	private AuthMapper mapper;
	
	// 성공
//	@Test
//	public void testRegister() {
//		
//		AuthVO vo = new AuthVO();
//		vo.setAuth("ROLE USER");
//		vo.setMid("test02");
//		
//		int result = mapper.register(vo);		
//		
//		log.info("입력된 AuthVO 객체 : "+vo +"------------- 권한 등록 결과 : " + result +"-----------");
//	}
	
	
}
