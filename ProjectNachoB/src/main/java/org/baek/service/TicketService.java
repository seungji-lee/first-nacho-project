package org.baek.service;

import java.util.List;

import org.baek.domain.MovieVO;
import org.baek.domain.TicketingVO;

public interface TicketService {
   public List<MovieVO> getMing(); // 현재 상영중 영화 목록
   public MovieVO getMingMovie(int mno);  // 예매 할 때 영화 정보 가져오기
   public int insertTk(TicketingVO tkvo); // 예매 정보를 예매테이블에 삽입
   public List<TicketingVO> getMyTicket(String mid);  // 예매 마지막에서 나의 예매 정보 출력하기
   public int removeBook(TicketingVO tkvo);   // 예매내역 삭제
   public int removeBookByTno(int tno);  // 체크한 예매내역만 삭제시 사용
}