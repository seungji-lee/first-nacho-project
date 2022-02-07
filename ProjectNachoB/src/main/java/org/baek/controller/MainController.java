package org.baek.controller;


import org.baek.domain.MovieReplyVO;
import org.baek.domain.MovieVO;
import org.baek.service.MovieReplyService;
import org.baek.service.MovieService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/project/*")
public class MainController {
	
	private MovieService service;
	private MovieReplyService service2;
	
	@GetMapping("/main")
	public void main(Model model) {
		log.info("list...");
		model.addAttribute("Ming", service.getMing());
	}

	
	@GetMapping("/get")
	public void get(Model model, @RequestParam("mno") int mno) {
		
		log.info("get...");
		
		model.addAttribute("movie", service.get(mno));
		
		model.addAttribute("genre1", service.get2(mno));
		model.addAttribute("genre2", service.get3(mno));
		
		model.addAttribute("MovieReplyList", service2.getMovieReplyList(mno));
		
	}
	
	@PostMapping("/get")
	public String MreplyInsert(Model model, MovieReplyVO mrVo, MovieVO vo, int mno) {
		log.info("Insert MovieReply....");
		model.addAttribute("mno", mno);
		service2.insertMreply(mrVo);
		service.updateMpoint(vo);
		return "redirect:/project/get";
	}

	
	
}
