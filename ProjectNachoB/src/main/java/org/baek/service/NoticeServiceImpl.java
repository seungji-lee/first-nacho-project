package org.baek.service;

import java.util.List;

import org.baek.domain.Criteria;
import org.baek.domain.NoticeVO;
import org.baek.mapper.NoticeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class NoticeServiceImpl implements NoticeService {

	@Setter(onMethod_ = @Autowired)
	private NoticeMapper mapper;
	
	@Override
	public int register(NoticeVO notice) {
		log.info("register..." + notice);
		return mapper.insert(notice);
	}

	@Override
	public NoticeVO get(long ntno) {
		log.info("get..." + ntno);
		NoticeVO returnData = mapper.read(ntno);
		return returnData;
	}

	@Override
	public boolean remove(long ntno) {
		log.info("remove...");
		return mapper.delete(ntno)==1 ;
	}

	@Override
	public boolean modify(NoticeVO notice) {
		log.info("modify...");
		return mapper.update(notice) == 1;
	}
	
	
	@Override
	public List<NoticeVO> getList(Criteria cri) {
		log.info("getList...");
		return mapper.getList(cri);
	}
	
	@Override
	public int getTotal() {
		log.info("getTotal...");
		return mapper.getTotalCount();
	}

	
	

}
