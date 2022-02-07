package org.baek.controller;

import org.baek.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
public class UserRegController {
	
	@Autowired
	private MemberService service;

	// id 중복 체크 컨트롤러
	@ResponseBody
	@RequestMapping(value = "/user/idCheck", method = RequestMethod.POST)
	public int idCheck(@RequestParam("mid") String mid) throws Exception {
		int result = service.userIdCheck(mid);
		
		log.info("ID sameCheck result :" + result);
		
		return result;
	}
	
}
	
