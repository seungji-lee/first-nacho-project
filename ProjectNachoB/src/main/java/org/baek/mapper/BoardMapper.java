package org.baek.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.baek.domain.BoardVO;
import org.baek.domain.Criteria;

public interface BoardMapper {
	// @Select("SELECT * FROM boardlist WHERE bno > 0")
	public List<BoardVO> getList(Criteria cri);
	
	public int insert(BoardVO Bvo);
	
	public BoardVO read(long bno);
	
	public int delete(long bno);
	
	public int update(BoardVO Bvo);
	
	public int getTotalCount();
	
	public void updateReplyCnt(@Param("bno") long bno, @Param("amount") int amount);
	
	public void updateHit(long bno);
}
