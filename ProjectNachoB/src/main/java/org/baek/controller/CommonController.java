package org.baek.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;


@Log4j
@Controller
public class CommonController {
		
	@GetMapping("/accessError")	// 로그인 에러가 생겼을 때 이쪽을 탄다
	public void accessDenied(Model model, Authentication auth) {	// Autentication import security로 하기 조심
		log.info("access Denied : " + auth);
		model.addAttribute("msg", "Access Denied");
	}
	
	@GetMapping("/customLogin")
	public void loginInput(String error, String logout, Model model) {	// 에러랑 로그아웃을 판단하기 위해 적음
		log.info("error : " + error);
		log.info("logout : " + logout);
		
		if(error != null) {
			model.addAttribute("error", "Login Error");
		}
		
		if(logout != null) {
			model.addAttribute("logout", "Logout!!");
		}
	}
	
	@GetMapping("/nachoCustomLogin")
	public void nachoLoginInput(String error, String logout, Model model) {	// 에러랑 로그아웃을 판단하기 위해 적음
		log.info("error : " + error);
		log.info("logout : " + logout);
		
		if(error != null) {
			model.addAttribute("error", "Login Error");
		}
		
		if(logout != null) {
			model.addAttribute("logout", "Logout!!");
		}
	}
	
	@GetMapping("/customLogout")
	public void logout() {
		log.info("custom logout");
	}
	
}
