package org.baek.service;

import java.util.List;

import org.baek.domain.NoticeVO;
import org.baek.domain.Criteria;

public interface NoticeService {
	public List<NoticeVO> getList(Criteria cri);
	
	public int register(NoticeVO notice);
	
	public NoticeVO get(long ntno);
	
	public boolean remove(long ntno);
	
	public boolean modify(NoticeVO notice); 
	
	public int getTotal();
}
