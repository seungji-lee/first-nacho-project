package org.baek.controller;


import org.baek.domain.TicketingVO;
import org.baek.service.TicketService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/project/*")
public class TicketController {
	
	private TicketService service;
	
	@GetMapping("/ticket1")
	public void ticket(Model model) {
		log.info("Ming list...");
		model.addAttribute("Ming", service.getMing());
	}
	
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/ticket2")
	public void ticket2(Model model, int mno) {
		log.info("get Ming info...");
		model.addAttribute("MingInfo", service.getMingMovie(mno));
	}
	
	
	/*
	 * @GetMapping("/ticket3") public void ticket3_get(Model
	 * model, @RequestParam("mid") String mid) { log.info("get ticket info...");
	 * 
	 * }
	 */
	 
	
	@PostMapping("/ticket3")
	public void ticket3(Model model, TicketingVO tkvo, String mid) {
		log.info("ticketing end...");
		/* model.addAttribute("mid", mid); */
		service.insertTk(tkvo);
		model.addAttribute("ticketInfo", service.getMyTicket(mid));
		
		/* return "redirect:/project/ticket3"; */
	}

}
