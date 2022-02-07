package org.baek.controller;

import org.baek.domain.MovieReplyVO;
import org.baek.service.MovieReplyService;
import org.baek.service.MovieService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/Mreply/*")

public class MovieReplyController {
	
	private MovieReplyService service;
	
	@GetMapping("/mreplyRegister")
	public String insert(Model model, MovieReplyVO mrVo, RedirectAttributes rttr, @RequestParam("mno") int mno) {
		log.info("mreply insert...");
		int result = service.insertMreply(mrVo);
		
		if(result>0) {
			rttr.addFlashAttribute("result", result);
		}
		
		return "redirect:/project/get?mno=mno";
	}
}
