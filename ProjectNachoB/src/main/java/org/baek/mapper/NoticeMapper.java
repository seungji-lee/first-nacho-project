package org.baek.mapper;

import java.util.List;

import org.baek.domain.Criteria;
import org.baek.domain.NoticeVO;

public interface NoticeMapper {
	// @Select("SELECT * FROM boardlist WHERE ntno > 0")
	public List<NoticeVO> getList(Criteria cri);
	
	public int insert(NoticeVO ntVO);
	
	public NoticeVO read(long ntno);
	
	public int delete(long ntno);
	
	public int update(NoticeVO Ntvo);
	
	public int getTotalCount();
}
