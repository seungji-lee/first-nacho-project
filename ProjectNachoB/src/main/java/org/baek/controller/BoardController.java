
package org.baek.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.baek.domain.BoardVO;
import org.baek.domain.Criteria;
import org.baek.domain.PageDTO;
import org.baek.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/board/*")
public class BoardController {
	private BoardService service;
	
	@GetMapping("/list")
	public void list(Model model, Criteria cri) {
		
		log.info("list... " + cri);
		
		List<BoardVO> list = service.getList(cri);
		
		model.addAttribute("list", list);
		
		int total = service.getTotal();  // 전체 글 개수 가져오기
		model.addAttribute("pageMaker", new PageDTO(cri, total));   // total = 전체 개수
		
	}
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/register")
	public void register(Model model, Criteria cri) {
		model.addAttribute("cri", cri);
		
	}
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/register")
	public String register(Model model, BoardVO board, RedirectAttributes rttr, @ModelAttribute("cri") Criteria cri, HttpServletRequest req) {
		log.info("register..." + board);
		log.info("register's mid : " + board.getMid());
		int result = service.register(board);
		
		if(result>0) {
			rttr.addFlashAttribute("result", result);
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		return "redirect:/board/list";
	}
	
	@GetMapping({"/get", "/modify"})
	public void get(Model model, @RequestParam("bno") long bno, Criteria cri) {
		log.info("get or modify");
		
		BoardVO returnData = service.get(bno);
		
		model.addAttribute("board", returnData);
		model.addAttribute("cri", cri);
		
		service.updateHit(bno);
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") long bno, RedirectAttributes rttr,
			@ModelAttribute("cri") Criteria cri) {
		log.info("remove..." + bno);
		
		if(service.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		return "redirect:/board/list";	
	}
	
	@PostMapping("/modify")
	public String update(Model model, BoardVO board, RedirectAttributes rttr, @ModelAttribute("cri") Criteria cri) {
		log.info("modify..." + board);
		

		if(service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		return "redirect:/board/list";
	}
	
	
	
	
}
