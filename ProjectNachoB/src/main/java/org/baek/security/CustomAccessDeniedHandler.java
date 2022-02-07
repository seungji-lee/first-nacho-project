package org.baek.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomAccessDeniedHandler implements AccessDeniedHandler{@Override
	//에러가 났을 때 어떤 동작을 하는지 판단해서 이동시켜주는 역할(security-context에 AccessDeniedHandler객체가 있음)

	public void handle(HttpServletRequest request, HttpServletResponse response,
			AccessDeniedException accessDeniedException) throws IOException, ServletException {
	
	
		log.error("Access Denied Handler");
		log.error("redirect    /accessError");
	
		response.sendRedirect("/accessError"); 	// 이쪽 url을 타게 만들어준다.
	
	}
	
	
	
}
