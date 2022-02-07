package org.baek.mapper;

import java.util.List;

import org.baek.domain.MovieVO;
import org.baek.domain.TicketingVO;

public interface TicketMapper {
   public List<MovieVO> getMing();  // 현재 상영중 영화 목록
   public MovieVO getMingMovie(int mno);  // 예매 할 때 영화 정보 가져오기
   public int insertTk(TicketingVO tkvo); // 예매 정보를 예매테이블에 삽입
   public List<TicketingVO> getMyTicket(String mid);  // 예매 마지막에서 나의 예매 정보 출력하기
   public int deleteBook(TicketingVO tkvo);   // 예매 정보를 토대로 해당 티켓 삭제
   public int deleteBookByTno(int tno);   // 체크한 티켓 삭제시 사용
}