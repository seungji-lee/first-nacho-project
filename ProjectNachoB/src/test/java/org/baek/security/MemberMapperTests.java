package org.baek.security;

import org.baek.domain.AuthVO;
import org.baek.domain.MemberVO;
import org.baek.mapper.MemberMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTests {

	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	// 비밀번호 업데이트를 위해 사용, 안되면 controller에서 ㄱ 안된다.
//	@Autowired
//	private BCryptPasswordEncoder pwencoder;

	
	
//	@Test
//	public void testRead() {
//		MemberVO vo = mapper.read("admin90");
//		
//		log.info(vo);
//		
//		
//		for(AuthVO aVo : vo.getAuthList()) {
//			log.info(aVo);
//		}
//		
//	}
	
//	@Test
//	public void testRegister() {
//		MemberVO vo = new MemberVO();
//		vo.setMid("test04");
//		vo.setMpw("pw04");
//		vo.setMchpw("pw04");
//		vo.setMname("테스터04");
//		vo.setMemail("test04@goot.com");
//		
//		
//		int result = mapper.register(vo);
//		
//		log.info("==================== result of register : "+result+"==========================");
//		
//	}
	

//	@Test
//	public void testUserIdCheck() {
//		String mid = "user1";
//		
//		int result = mapper.userIdCheck(mid);
//		log.info("===========result of method userIdCheck : " + result);
//	}

	// 통과
	// 아이디 찾기 by name and email
//	@Test
//	public void testFindIdByName() {
//		MemberVO vo = new MemberVO();
//		String ename = "관리자90";
//		String memail = "admin90@goot.com";
//		
//		vo = mapper.findIdByNameAndEmail(ename, memail);
//		
//		String mid = vo.getMid();
//		
//		log.info("result of mid found by method, findIdByName() : "+mid+
//				"===================================================================");
//	}
		
	
	// pw 통과, 컴퓨터 껐다가 키니까 된다. 아.. 두시간 동안 찾았는데 개허무 -_-
	// 비밀번호 변경 테스트 
//	@Test
//	public void testUpdatePw() {
//		MemberVO vo = new MemberVO();
//		String changedPw = "testPw01";
//		String changedChPw ="testPw01";
//		String willEncodedPw = changedPw; // 인코딩된 비밀번호(controller에서 할거임 여기는 테스트)
//		String mid = "test04";
//		
//		vo.setMid(mid);
//		vo.setMpw(willEncodedPw);
//		vo.setMchpw(changedChPw);
//
//		
//		int result  = mapper.updatePw(vo);
//		
//		log.info("result of changed pw and chpw : "+result+"===========================");
//		
//	}

		// 조건에 맞는 객체 가져오기(비밀번호 변경을 위함) 성공
//	@Test
//	public void testGetVOForNewPw() {
//		String mid = "admin90";
//		String mname = "관리자90";
//		String memail = "admin90@goot.com";
//		MemberVO vo = new MemberVO();
//		
//		vo = mapper.getVOForNewPw(mid, mname, memail);
//		
//		String resultChPw = vo.getMchpw();
//		
//		log.info("confirmed pw as a result of sql : " + resultChPw);
//		
//		
//	}
	
	// 성공
//	@Test
//	public void testgetVOForChangePersonalInfo() {
//		
//		MemberVO vo = new MemberVO();
//		String mid = "admin91";
//		String mchpw = "123123123";
//		
//		vo = mapper.getVOForChangePersonalInfo(mid, mchpw);
//		
//		log.info("found vo infomation : " + vo.getMid() +"********"+ vo.getMname());
//		
//		
//	}

	// 성공
//	@Test
//	public void testUpdateMember() {
//		
//		MemberVO vo = new MemberVO();
//		vo.setMid("admin91");
//		vo.setMname("sujungssi");
//		vo.setMpw("123123");
//		vo.setMchpw("123123");
//		vo.setMemail("sujung02@goot.com");
//		
//		int result = mapper.updateMember(vo);
//		
//		log.info("--------------------------------"+result);
//		
//	}
	
}
