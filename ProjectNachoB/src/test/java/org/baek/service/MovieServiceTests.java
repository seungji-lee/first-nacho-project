package org.baek.service;

import static org.junit.Assert.assertNotNull;

import org.baek.domain.MovieVO;
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
public class MovieServiceTests {
	
	@Setter(onMethod_ = @Autowired)
	private MovieService service;
	
	
	@Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	
//	@Test
//	public void testGetAllFromOne() {
//		MovieVO vo = new MovieVO();
//		vo.setTitle("엠마 왓슨");
//		vo.setMainact1("엠마 왓슨");
//		vo.setMainact2("엠마 왓슨");
//		vo.setContent("엠마 왓슨");
//		vo.setSupportact1("엠마 왓슨");
//		vo.setSupportact2("엠마 왓슨");
//		vo.setDirector("엠마 왓슨");
//		
//		service.getAllFromOne(vo);
//	}
	
	//장르 별 리스트 
//	@Test
//	public void testGetListBySelectedGenre() {
//		String value = "액션";
//		service.getListBySelectedGenre(value);
//		
//	}
	
	// 관람가 별 리스트 , 로그를 씌워도 안나온다. 원래 안나오는 건가. 질문 ㄱ
//	@Test
//	public void testGetAllFromSelectedAge() {
//		String age1 = "12세 관람가";
//		service.getAllFromSelectedAge(age1);
//	}
	
	// 년도 설정에 따른 리스트
//	@Test
//	public void testGetAllFromSelectedYear() {
//		int year1 = 2001;
//		int year2 = 2005;
//		
//		service.getAllFromSelectedYear2(year1, year2);
//	}
	
	
		
	
	
}
