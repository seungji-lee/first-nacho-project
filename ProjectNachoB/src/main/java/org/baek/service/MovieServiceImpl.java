package org.baek.service;

import java.util.List;

import org.baek.domain.MovieVO;
import org.baek.mapper.MovieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MovieServiceImpl implements MovieService{
	
	@Setter(onMethod_ = @Autowired)
	private MovieMapper mapper;

	
	
	@Override
	public List<MovieVO> getMing() {
		log.info("getMing...");
		return mapper.getMing();
	}
	
	@Override
	public MovieVO get(int mno) {
		log.info("get..." + mno);
		
		return mapper.read(mno);
	}

	@Override
	public List<MovieVO> get2(int mno) {
		log.info("get2..." + mno);
		
		return mapper.read2(mno);
	}
	
	@Override
	public List<MovieVO> get3(int mno) {
		log.info("get3..." + mno);
		return mapper.read3(mno);
	}
	
	@Override
	public List<MovieVO> getAllFromOne(MovieVO vo) {
		log.info("getAllFromOne...." + vo);
		return mapper.getAllFromOne(vo);
	}
	

	@Override
	public List<MovieVO> getAllFromGenre(String value) {
		log.info("getListBySelectedGanre..." + value);
		return mapper.getAllFromGenre(value);
	}


	@Override
	public List<MovieVO> getAllFromSelectedAge(String age) {
		log.info("getAllFromSelectedAge....." + age);
		return mapper.getAllFromAge(age);
	}


	@Override
	public List<MovieVO> getAllFromSelectedYear2(int year1, int year2) {
		log.info("getAllFromSelectedYear2..." + year1 + year2);
		return mapper.getAllFromYear2(year1, year2);
	}

	@Override
	public int updateMpoint(MovieVO vo) {
		log.info("update mpoint.......");
		return mapper.updateMpoint(vo);
	}

	
}
