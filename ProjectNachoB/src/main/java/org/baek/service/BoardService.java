package org.baek.service;

import java.util.List;

import org.baek.domain.BoardVO;
import org.baek.domain.Criteria;

public interface BoardService {
	public List<BoardVO> getList(Criteria cri);
	
	public int register(BoardVO board);
	
	public BoardVO get(long bno);
	
	public boolean remove(long bno);
	
	public boolean modify(BoardVO board); 
	
	public int getTotal();
	
	public void updateHit(long bno);
	
}
