package org.baek.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.baek.domain.Criteria;
import org.baek.domain.ReplyVO;

public interface ReplyMapper {
	public int insert(ReplyVO vo);
	public List<ReplyVO> getList(@Param("bno") long bno, @Param("cri") Criteria cri);
	public ReplyVO read(long rno);
	public int delete(long rno);
	public int update(ReplyVO vo);
	public int boardReplyDelete(long bno);
	
}
