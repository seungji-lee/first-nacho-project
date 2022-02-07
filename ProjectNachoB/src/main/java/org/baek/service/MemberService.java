package org.baek.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.baek.domain.BoardVO;
import org.baek.domain.MemberVO;
import org.baek.domain.MovieReplyVO;
import org.baek.domain.TicketingVO;

public interface MemberService {
	
	public MemberVO get(String mid);	// 아이디에 따른 검색
	public int join(MemberVO vo);	// 회원가입
	public int remove(MemberVO vo);		// 탈퇴
	public int userIdCheck(String mid);	// 맴버 id 중복확인
	public int updatePw(MemberVO vo);	// 비밀번호 변경
	public MemberVO findIdByNameAndEmail(@Param("mname")String mname, 
											@Param("memail") String memail); // 이름으로 아이디 검색(아이디 찾기 part.1)
	public MemberVO getPwByIdAndNameAndEmail(@Param("mid") String mid, @Param("mname") String mname,
			@Param("memail") String memail); // 비밀번호 찾기
	public MemberVO findOneForNewPw(@Param("mid") String mid, @Param("mname") String mname,
			@Param("memail") String memail); // 조건에 맞는 객체 찾기(비밀번호 수정용)
	public MemberVO findOneForChangePersonalinfo(@Param("mid") String mid, 
													@Param("mchpw") String mchpw); // 개인정보 수정을 위한 비밀번호 검증
	public int updateMember(MemberVO vo); // 개인정보 수정
	
	//마이페이지에서 출력 되는 것들
	public List<TicketingVO> Mytickets(String mid);
	public List<BoardVO> Myboard(String mid);
	public List<MovieReplyVO> MyMovieReply(String mid);
 }
