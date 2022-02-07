package org.baek.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.baek.domain.Criteria;
import org.baek.domain.ReplyVO;
import org.baek.mapper.BoardMapper;
import org.baek.mapper.ReplyMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ReplyServiceImpl implements ReplyService{
	
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;
    
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper2;
	
	
	@Transactional
	@Override
	public int register(ReplyVO vo) {
		log.info("register..." + vo);
		// tbl_board 테이블의 replycnt 컬럼에 1 추가
		mapper2.updateReplyCnt(vo.getBno(), 1);
		return mapper.insert(vo);
	}

	@Override
	public List<ReplyVO> getList(long bno, Criteria cri) {
		log.info("getList...");
		return mapper.getList(bno, cri);
	}
	
	@Override
	public int modify(ReplyVO vo) {
		log.info("modify...");
		return mapper.update(vo);
	}

	@Transactional
	@Override
	public int remove(long rno, long bno) {
		log.info("remove...");
		
		//ReplyVO vo = mapper.read(rno);  ==> reply 테이블의 데이터 정보 가져오기
		//mapper2.updateReplyCnt(vo.getBno(), -1);   ==> 위에서 가져온 vo에서 bno를 가져온다(reply테이블에도 bno가 있으니까)
		// 이렇게 하면 jsp, ajax, controller, service의 코드를 수정 안해도 된다.
		mapper2.updateReplyCnt(bno, -1);
		return mapper.delete(rno);
	}

	@Override
	public ReplyVO get(long rno) {
		log.info("get..." + rno);
		
		return mapper.read(rno);
	}
	
	
}
