package org.baek.service;

import java.util.List;

import org.baek.mapper.BoardMapper;
import org.baek.mapper.ReplyMapper;
import org.baek.service.BoardServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.baek.domain.BoardVO;
import org.baek.domain.Criteria;
import org.baek.domain.ReplyVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BoardServiceImpl implements BoardService {

	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper2;

	private ReplyVO ReplyVO;

	@Override
	public int register(BoardVO board) {
		log.info("register..." + board);
		return mapper.insert(board);
	}

	@Override
	public BoardVO get(long bno) {
		log.info("get..." + bno);
		BoardVO returnData = mapper.read(bno);
		return returnData;
	}

	@Override
	public boolean remove(long bno) {
		log.info("remove...");
		
		mapper2.boardReplyDelete(bno);
		
		return mapper.delete(bno)==1 ;
	}

	@Override
	public boolean modify(BoardVO board) {
		log.info("modify...");
		return mapper.update(board) == 1;
	}
	
	
	@Override
	public List<BoardVO> getList(Criteria cri) {
		log.info("getList...");
		List<BoardVO> list = mapper.getList(cri);
		return list;
	}
	
	@Override
	public int getTotal() {
		log.info("getTotal...");
		return mapper.getTotalCount();
	}
	
	@Override
	public void updateHit(long bno) {
		log.info("updateHit...");
		mapper.updateHit(bno);
	}
	
	

}
