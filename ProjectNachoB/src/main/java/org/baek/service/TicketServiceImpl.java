package org.baek.service;

import java.util.List;

import org.baek.domain.MovieVO;
import org.baek.domain.TicketingVO;
import org.baek.mapper.TicketMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
public class TicketServiceImpl implements TicketService{
   
   @Setter(onMethod_ = @Autowired)
   private TicketMapper mapper;
   
   @Override
   public List<MovieVO> getMing() {
      log.info("Ming list...");
      return mapper.getMing();
   }
   
   @Override
   public MovieVO getMingMovie(int mno) {
      log.info("get Ming info...");
      return mapper.getMingMovie(mno);
   }
   
   
   @Override
   public int insertTk(TicketingVO tkvo) {
      log.info("insert...");
      return mapper.insertTk(tkvo);
   }
   

   @Override
   public List<TicketingVO> getMyTicket(String mid) {
      log.info("get My Ticket...");
      return mapper.getMyTicket(mid);
   }

   @Override
   public int removeBook(TicketingVO tkvo) {
      log.info("delete My Ticket...");      
      return mapper.deleteBook(tkvo);
   }

   @Override
   public int removeBookByTno(int tno) {
      log.info("delete My Ticket by tno...");            

      return mapper.deleteBookByTno(tno);
   }
   
   
}