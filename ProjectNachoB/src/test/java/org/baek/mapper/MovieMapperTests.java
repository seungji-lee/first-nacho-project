package org.baek.mapper;

import java.util.List;

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
public class MovieMapperTests {

	@Setter(onMethod_ = @Autowired)
	private MovieMapper mapper;
	
	
		// like절 활용 통합검색 테스트
//	@Test
//	public void testGetAllFromOne() {
//		MovieVO vo = new MovieVO();
//		vo.setContent("엠마 왓슨");
//		vo.setTitle("엠마 왓슨");
//		vo.setMainact1("엠마 왓슨");
//		vo.setMainact2("엠마 왓슨");
//		vo.setDirector("엠마 왓슨");
//		vo.setSupportact1("엠마 왓슨");
//		vo.setSupportact2("엠마 왓슨");
//		
//		
//		List<MovieVO> list = mapper.getAllFromOne(vo);
//		
//		for(MovieVO vo2 : list) {
//			log.info(vo2);
//		}
//	}
	
	
	 // 시험삼아 해본 테스트
//	@Test
//	public void testGetAllByMainact1() {
//		String mainact1 = "하정우";
//		List<MovieVO> list = mapper.getListByMainact1(mainact1);
//		
//		for(MovieVO vo : list) {
//			log.info(vo);
//		}
//	}
	
	
//	// 특정 장르 만 출력되는 리스트 테스트
//	@Test
//	public void testGetListBySelectedGanre() {
//		String value = "액션";
//		List<MovieVO> list = mapper.getSelectedAllFromGenre(value);
//		
//		for(MovieVO vo : list) {
//			log.info(vo);
//		}
//		
//	}
	
	// 가능한 관람가 테스트
//	@Test
//	public void testGetAllFromAge() {
//		String age = "12세 관람가";
//		List<MovieVO> list = mapper.getAllFromAge(age);
//		
//		for(MovieVO vo : list) {
//			log.info(vo);
//		}
//	}
	
	// 개봉년도 테스트
//	@Test
//	public void testGetAllFromYear1() {
//		int year1 = 1990;
//		int year2 = 1992;
//		List<MovieVO> list = mapper.getAllFromYear2(year1, year2);
//		
//		for(MovieVO vo : list) {
//			log.info(vo);
//		}
//	}
	
}
