package org.baek.controller;

import org.baek.domain.Criteria;
import org.baek.domain.ReplyVO;
import org.baek.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/replies")
public class ReplyController {
	
	@Setter(onMethod_ = @Autowired)
	private ReplyService service;
	
	// produces = 출력할 데이터 포맷
	// consumes = 수신할 데이터 포맷
	// 삽입
	@PostMapping(value = "/new", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody ReplyVO vo) {
		log.info("ReplyVO : " + vo);
		
		int insertCount = service.register(vo);
		
		log.info("Reply insert count : " + insertCount);
		
		return insertCount ==1? new ResponseEntity<>("success",HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	// 댓글 목록
	@GetMapping(value = "/pages/{bno}/{page}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<ReplyVO> getList(@PathVariable("bno") long bno, @PathVariable("page") int page){
		log.info("getList...");
		Criteria cri = new Criteria(page, 10,"","");
		log.info(cri);
		
		return new ResponseEntity(service.getList(bno, cri), HttpStatus.OK);
		
	}
	
	// 댓글 조회
	@GetMapping(value = "/{rno}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<ReplyVO> get(@PathVariable("rno") long rno){
		log.info("get..." + rno);
		
		return new ResponseEntity<>(service.get(rno), HttpStatus.OK);
	}
	
	// 댓글 삭제
	@DeleteMapping(value = "/{rno}/{bno}", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@PathVariable("rno") long rno, @PathVariable("bno") long bno){
		log.info("remove..." + rno);
		
		return service.remove(rno, bno) ==1? new ResponseEntity<>("success",HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		
	}
	
	// 댓글 수정
	@RequestMapping(value = "/{rno}", method = {RequestMethod.PUT, RequestMethod.PATCH}, 
			consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(@PathVariable("rno") long rno, @RequestBody ReplyVO vo){
		vo.setRno(rno);
		
		log.info("rno : " + rno);
		log.info("modify : " + vo);
		
		int modifyCount = service.modify(vo);
		
		log.info("reply modify count : " + modifyCount);
		
		return modifyCount ==1? new ResponseEntity<>("success",HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	
}
