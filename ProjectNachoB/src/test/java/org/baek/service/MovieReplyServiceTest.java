package org.baek.service;

import org.baek.domain.MovieReplyVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MovieReplyServiceTest {

	@Setter(onMethod_ = @Autowired)
	private MovieReplyService service;
	
	@Test
	public void insert() {
		MovieReplyVO mrVo = new MovieReplyVO();
		
		mrVo.setMid("작성자2");
		mrVo.setContent("테스트 내용2");
		mrVo.setPoint(4);
		mrVo.setMno(285);
		
		service.insertMreply(mrVo);
		log.info(mrVo);
	}
}
