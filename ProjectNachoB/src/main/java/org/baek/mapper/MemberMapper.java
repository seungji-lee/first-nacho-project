package org.baek.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.baek.domain.BoardVO;
import org.baek.domain.MemberVO;
import org.baek.domain.MovieReplyVO;
import org.baek.domain.TicketingVO;

public interface MemberMapper {
	public MemberVO read(String mid);
	public int register(MemberVO vo);
	public int userIdCheck(String mid);
	public int updatePw(MemberVO vo);	// mid, mpw, mchpw 필요
	public MemberVO findIdByNameAndEmail(@Param("mname") String mname, 
											@Param("memail") String memail);	// 아이디 찾기
	public MemberVO findPwByIdAndNameAndEmail(@Param("mid") String mid, @Param("mname") String mname,
												@Param("memail") String memail); // 비밀번호 찾기(postMapping 한곳에 두개 가능하면 api 도전)
	public MemberVO getVOForNewPw(@Param("mid") String mid, @Param("mname") String mname,
			@Param("memail") String memail);	// 비밀번호 변경권한 확인을 위해 객체 가져오기
	public MemberVO getVOForChangePersonalInfo(@Param("mid") String mid, 
													@Param("mchpw") String mchpw); //비밀번호로 회원정보 수정 권한 확인
	public int updateMember(MemberVO vo); //회원정보 수정
	
	//마이페이지에서 출력 되는 것들
		public List<TicketingVO> Mytickets(String mid);
		public List<BoardVO> Myboard(String mid);
		public List<MovieReplyVO> MyMovieReply(String mid);
	
}
