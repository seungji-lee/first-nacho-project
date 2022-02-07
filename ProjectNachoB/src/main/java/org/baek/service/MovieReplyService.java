package org.baek.service;

import java.util.List;

import org.baek.domain.MovieReplyVO;

public interface MovieReplyService {
   public List<MovieReplyVO> getMovieReplyList(int mno);
   public int insertMreply(MovieReplyVO mrVo);
   public int removeMreply(int mrno);
}