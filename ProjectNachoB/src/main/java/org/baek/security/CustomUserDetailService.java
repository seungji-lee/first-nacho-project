package org.baek.security;

import org.baek.domain.MemberVO;
import org.baek.mapper.MemberMapper;
import org.baek.security.domain.CustomUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailService implements UserDetailsService{

	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
			
		log.warn("load user by userName : " + username);
		
		mapper.read(username);
		
		// username means userid
		MemberVO vo = mapper.read(username);
		
		log.warn("memberVO : " + vo);
		
		CustomUser cu = new CustomUser(vo);	
		
		return vo == null ? null  : cu;		//CustomUser에서 가져온 것을 리턴
	}
	
	
	
}
