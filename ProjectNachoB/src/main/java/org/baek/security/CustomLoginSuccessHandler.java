package org.baek.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import lombok.extern.log4j.Log4j;


@Log4j
public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler{
	
	// 어떤 경로로 들어왔어도 권한에 따라 URI가 달라지는 HANDLER 
	
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {

		
		log.warn("Login Success!!");
		// 로그인에 관한 권한들을 판단하기 위해 가져온다
		
		List<String> roleName = new ArrayList<String>();
		
		
		for(GrantedAuthority auth : authentication.getAuthorities()) { // security-context에서 각각 user들의 권한들을 가져온다.
			roleName.add(auth.getAuthority());
		}
		log .warn("ROLE NAME : " + roleName);
		
		if(roleName.contains("ROLE_ADMIN")) {
			response.sendRedirect("/project/main");
			return;
		}
		if(roleName.contains("ROLE_MEMBER")) {
			response.sendRedirect("/project/main");
			return;
		}
		
		response.sendRedirect("/");

	}
		// 어떤 타입으로 메소드를 받을지 모르기 때문에 다큐먼트로 본다. 인터넷에 스프링 document, 자바11 document를 적어서 들어가심(무슨말이지?)
		// 간편하게 보는 법은 사용하는 메소드 위에 마우스를 올리면 collection이라고 나온다
		// https://docs.spring.io/spring-framework/docs/current/javadoc-api/ 여기 들어가서 찾아보면 된다.
		// 그 메소드가 무엇을 보내주는지 무엇을 필요로 하는지 알아야하기 때문에
		// collection으로 넘어오기 때문에 배열로 받을 수 있다.
		
		
		
		
		
	
}
