package org.baek.service;

import java.util.List;

import org.baek.domain.Criteria;
import org.baek.domain.ReplyVO;

public interface ReplyService {
	public int register(ReplyVO vo);
	public List<ReplyVO> getList(long bno, Criteria cri);
	public int modify(ReplyVO vo);
	public int remove(long rno , long bno);
	public ReplyVO get(long rno);
}
