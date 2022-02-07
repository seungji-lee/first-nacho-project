package org.baek.service;

import static org.junit.Assert.assertNotNull;

import org.baek.domain.MemberVO;
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
public class MemberServiceTests {
	
	@Setter(onMethod_ = @Autowired)
	private MemberService service;
	
	// 여기에서는 안먹힌다. controller에서 시도
//	@Setter(onMethod_ = @Autowired)
//	private BCryptPasswordEncoder pwencoder;
	
	// 안되다가 갑자기 된다 뭐지, 일단 합격
//	@Test
//	public void testExist() {
//		log.info(service);
//		assertNotNull(service);
//	}

	
//	// insert 성공! 트렌젝션
//	@Test
//	public void testJoin() {
//		MemberVO vo = new MemberVO();
//		vo.setMid("test05");
//		vo.setMpw("pw05");
//		vo.setMchpw("pw05");
//		vo.setMname("테스터05");
//		vo.setMemail("test05@goot.com");
//		int result = service.join(vo);
//		
//		log.info("service단 register test result : " + result);
//	}
	
//	
//	// 같은 아이디 로 검색되는지 테스트(회원가입 중복확인용) 
//	@Test
//	public void testSameIdCheckAjax() {
//		int result = service.userIdCheck("admin90");
//		log.info("==========result of DAO : "+ result +"==============");
//		
//	}
	
	
	// select 성공!
//	@Test
//	public void testFindIdByNameAndEmail() {
//		
//		MemberVO vo = new MemberVO();
//		
//		 vo = service.findIdByNameAndEmail("관리자90", "admin90@goot.com");
//		String foundId = vo.getMid();
//		
//		log.info("foundId by service_test : " + foundId+ "=================");
//		
//	}
	
	// 성공! junit이 중간에 동작을 안한다 = 컴터 껐다 키니까 된다 ㅡㅡ;
//	@Test
//	public void testUpdatePw() {
//		
//		MemberVO vo = new MemberVO();
//		vo.setMid("test04");
//		vo.setMpw("testpw01");
//		vo.setMchpw("testpw01");
//		
//		int result = service.updatePw(vo);
//		
//		log.info("==============="+result+"=====================");
//	}
	
	// 비밀번호 찾기(no api버젼).  성공
//	@Test
//	public void testGetPwEasyWayFirst() {
//		
//		MemberVO vo = new MemberVO();
//		String mid="test05";
//		String mname = "테스터05";
//		String memail = "test05@goot.com";
//		
//		vo = service.getPwByIdAndNameAndEmail(mid, mname, memail);
//		
//		log.info("==========result of finding pw: "+vo.getMchpw()+"===================");
//		
//	}
	
	// 조건에 맞는 객체 찾기(비밀번호 변경용) 성공
//	@Test
//	public void testFindOneForNewPw() {
//		
//		MemberVO vo = new MemberVO();
//		String mid="admin90";
//		String mname = "관리자90";
//		String memail = "admin90@goot.com";
//		
//		
//		vo = service.findOneForNewPw(mid, mname, memail);
//		
//		log.info("======mchpw of finding vo by mid, mname, memail : " + vo.getMchpw());
//	}
	
	// 성공
//	@Test
//	public void testgetVOForChangePersonalInfo() {
//		
//		MemberVO vo = new MemberVO();
//		String mid = "admin91";
//		String mchpw = "123123123";
//		
//		vo = service.findOneForChangePersonalinfo(mid, mchpw);
//	
//		
//	}

	// 개인정보 수정 성공
//	@Test
//	public void testUpdateMember() {
//		
//		MemberVO vo = new MemberVO();
//		vo.setMid("admin92");
//		vo.setMname("sujungssi");
//		vo.setMpw("123123");
//		vo.setMchpw("123123");
//		vo.setMemail("sujung02@goot.com");
//		
//		int result = service.updateMember(vo);
//		
//		log.info("--------------------------------"+result);
//	}
	
	
	
	
}
