package org.baek.service;

import static org.junit.Assert.assertNotNull;

import org.baek.domain.AuthVO;
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
public class AuthServiceTests {
	
	@Setter(onMethod_ = @Autowired)
	private AuthService service;

	
	// 성공, 이어지는데 시간이 걸리나보다. 바로 하려니까 에러가 생김
//	@Test
//	public void testExist() {
//		log.info(service);
//		assertNotNull(service);
//	}
	
	// 성공 성공, member_auth 테이블에 삽입되었다.
//	@Test
//	public void testJoin() {
//		AuthVO vo = new AuthVO();
//		vo.setMid("test03");
//		vo.setAuth("ROLE_MEMBER");
//		int result = service.register(vo);
//		
//		log.info("=====================service단 result for registerTest for auth table : " + result);
//	}

}
