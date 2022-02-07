package org.baek.service;

import org.baek.domain.AuthVO;
import org.baek.mapper.AuthMapper;
import org.baek.mapper.MovieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class AuthServiceImpl implements AuthService {
	
	@Setter(onMethod_ = @Autowired)
	private AuthMapper mapper;

	@Override
	public int register(AuthVO vo) {
		log.info("join(new member's Auth information) : " + vo);
		int result= mapper.register(vo);
		
		return result;
	}
	
	// 아직 미구현, 회원탈퇴 만들 시 
	@Override
	public int remove(AuthVO vo) {
		
		return 0;
	}
	

	
	
}
