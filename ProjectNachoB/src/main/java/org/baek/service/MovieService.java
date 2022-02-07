package org.baek.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.baek.domain.MovieVO;

public interface MovieService {
	public List<MovieVO> getMing(); // 현재 상영중 영화 목록
	public MovieVO get(int mno); // 영화 상세 정보
	
	public List<MovieVO> get2(int mno); // 비슷한 장르1의 영화
	public List<MovieVO> get3(int mno); // 비슷한 장르2의 영화
	
	public List<MovieVO> getAllFromOne(MovieVO vo);
	public List<MovieVO> getAllFromGenre(String value);
	public List<MovieVO> getAllFromSelectedAge(String age);
	public List<MovieVO> getAllFromSelectedYear2(@Param("year1") int year1,
			 										@Param("year2") int year2);
	public int updateMpoint(MovieVO vo);
}
