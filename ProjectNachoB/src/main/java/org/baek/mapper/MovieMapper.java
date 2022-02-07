package org.baek.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.baek.domain.MovieReplyVO;
import org.baek.domain.MovieVO;

public interface MovieMapper {
	public List<MovieVO> getMing(); // 현재 상영작 영화 목록
	public MovieVO read(int mno); // 영화 정보 하나 보기
	
	public List<MovieVO> read2(int mno); // 비슷한 장르1 영화 출력
	public List<MovieVO> read3(int mno); // 비슷한 장르2 영화 출력
	
	public List<MovieVO> getAllFromOne(MovieVO vo);	// 통합 검색
	public List<MovieVO> getListByMainact1(String mainact1); // 주연들로 검색
	public List<MovieVO> getAllFromGenre(String value); // 장르로 검색
	public List<MovieVO> getAllFromAge(String value); // 관람가 나이로 검색
	public List<MovieVO> getAllFromYear2(@Param("year1") int year1,
											@Param("year2") int year2); // 개봉년도로 검색 (년도가 2개)

	public int updateMpoint(MovieVO vo);
}
