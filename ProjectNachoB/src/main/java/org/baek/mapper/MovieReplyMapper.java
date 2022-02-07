package org.baek.mapper;

import java.util.List;

import org.baek.domain.MovieReplyVO;

public interface MovieReplyMapper {
   public List<MovieReplyVO> getMovieReplyList(int mno);
   public int insertMreply(MovieReplyVO mrVo);
   public int deleteMreply(int mrno);   // 마이페이지 댓글삭제 추가
   
}