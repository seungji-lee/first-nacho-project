package org.baek.security.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.baek.domain.MemberVO;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class CustomUser extends User{

// 람다 방식 사용하는데 그냥 보내주심, 람다는 현업에서도 초보개발자가 사용하기 어렵
// security에서 사용하는 auth를 관리해서 security내에 올려주는 용도

private static final long serialVersionUID = 1L;
	
	private MemberVO member;		// 이 member를 return 해주기 위해서 @getter or getter메소드를 직접 만들어도 된다.

	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}
	
	public CustomUser(MemberVO vo) {		
		super(vo.getMid(), vo.getMpw(), vo.getAuthList().stream().
				map(auth -> new SimpleGrantedAuthority(auth.getAuth())).
				collect(Collectors.toList()));
		
		this.member = vo;
	}

	public MemberVO getMember() {
		return member;
	}

	public void setMember(MemberVO member) {
		this.member = member;
	}
	
	
}
