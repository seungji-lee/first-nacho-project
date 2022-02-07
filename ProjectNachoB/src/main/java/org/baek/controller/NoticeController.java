
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
import org.baek.domain.NoticeVO;
import org.baek.domain.Criteria;
import org.baek.domain.PageDTO;
import org.baek.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/notice/*")
public class NoticeController {
	private NoticeService service;
	
	@GetMapping("/list")
	public void list(Model model, Criteria cri) {
		
		log.info("list... " + cri);
		
		List<NoticeVO> list = service.getList(cri);
		
		model.addAttribute("list", service.getList(cri));
		
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
	public String register(Model model, NoticeVO notice, RedirectAttributes rttr, @ModelAttribute("cri") Criteria cri, HttpServletRequest req) {
		log.info("register..." + notice);
		log.info("register's mid : " + notice.getMid());
		int result = service.register(notice);
		
		if(result>0) {
			rttr.addFlashAttribute("result", result);
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		return "redirect:/notice/list";
	}
	
	@GetMapping({"/get", "/modify"})
	public void get(Model model, @RequestParam("ntno") long ntno, Criteria cri) {
		log.info("get or modify");
		
		NoticeVO returnData = service.get(ntno);
		
		model.addAttribute("notice", returnData);
		model.addAttribute("cri", cri);
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("ntno") long ntno, RedirectAttributes rttr,
			@ModelAttribute("cri") Criteria cri) {
		log.info("remove..." + ntno);
		
		if(service.remove(ntno)) {
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		return "redirect:/notice/list";	
	}
	
	@PostMapping("/modify")
	public String update(Model model, NoticeVO notice, RedirectAttributes rttr, @ModelAttribute("cri") Criteria cri) {
		log.info("modify..." + notice);
		

		if(service.modify(notice)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		return "redirect:/notice/list";
	}
	
	
	
	
}
