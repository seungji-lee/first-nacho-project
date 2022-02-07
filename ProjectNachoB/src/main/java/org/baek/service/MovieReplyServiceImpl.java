package org.baek.service;

import java.util.List;

import org.baek.domain.MovieReplyVO;
import org.baek.mapper.MovieReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MovieReplyServiceImpl implements MovieReplyService{
   
   @Setter(onMethod_ = @Autowired)
   private MovieReplyMapper mapper;
   
   @Transactional
   @Override
   public List<MovieReplyVO> getMovieReplyList(int mno) {
      log.info("Movie replyList...");

      return mapper.getMovieReplyList(mno);
   }
   
   @Transactional
   @Override
   public int insertMreply(MovieReplyVO mrVo) {
      log.info("Movie reply insert...");
      return mapper.insertMreply(mrVo);
   }

   @Override
   public int removeMreply(int mrno) {
      log.info("Movie reply delete...");
      
      return mapper.deleteMreply(mrno);
   }
   
   
   
   
}