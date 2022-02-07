package org.baek.service;

import java.util.List;

import org.baek.domain.BoardVO;
import org.baek.domain.MemberVO;
import org.baek.domain.MovieReplyVO;
import org.baek.domain.TicketingVO;
import org.baek.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	

	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;

	@Override
	public MemberVO get(String mid) {
		log.info("get(all information about one member) : " + mid);
		
		return mapper.read(mid);
	}

	@Override
	public int join(MemberVO vo) {
		log.info("join(new member's personal information) : " + vo);
		int result= mapper.register(vo);
		
		return result;
	}
	
	
	// 아직 안만들었다. service 인터페이스에만 넣었음, mapper부터 test 필요
	@Override
	public int remove(MemberVO vo) {
		log.info("revmoe(one member from the member table)"+vo);
		return 0;
	}

	// 중복 아이디 체크
		@Override
		public int userIdCheck(String mid) {	 
			
			int result = mapper.userIdCheck(mid);
			log.info("userIdCheck method for checking same id RESULT : " + result);
			
			return result;
		}
		
		// 이름, 이메일로 아이디 찾기
		@Override
		public MemberVO findIdByNameAndEmail(String mname, String memail) {
			MemberVO vo = new MemberVO();
			
			vo = mapper.findIdByNameAndEmail(mname, memail);
			
			return vo;
		}

		@Override
		public int updatePw(MemberVO vo) {
			
			
			int result = mapper.updatePw(vo);
			
			return result;
		}

		@Override
		public MemberVO getPwByIdAndNameAndEmail(String mid, String mname, String memail) {
			MemberVO vo = new MemberVO();
			
			vo = mapper.findPwByIdAndNameAndEmail(mid, mname, memail);
			
			return vo;
		}

		@Override
		public MemberVO findOneForNewPw(String mid, String mname, String memail) {
			MemberVO vo = new MemberVO();
			
			vo = mapper.getVOForNewPw(mid, mname, memail);
			
			return vo;
		}

		@Override
		public MemberVO findOneForChangePersonalinfo(String mid, String mchpw) {
			
			MemberVO vo = new MemberVO();
			
			vo = mapper.getVOForChangePersonalInfo(mid, mchpw);
			
			return vo;
		}
		
		// 개인정보 수정
		@Override
		public int updateMember(MemberVO vo) {
			
			int result = mapper.updateMember(vo);
			
			return result;
		}

		@Override
		public List<TicketingVO> Mytickets(String mid) {
			log.info("***** My page TicketInfo..... ******");
			return mapper.Mytickets(mid);
		}

		@Override
		public List<BoardVO> Myboard(String mid) {
			log.info("***** My page BoardInfo..... ******");
			return mapper.Myboard(mid);
		}

		@Override
		public List<MovieReplyVO> MyMovieReply(String mid) {
			log.info("***** My page MovieReplyInfo..... ******");
			return mapper.MyMovieReply(mid);
		}

	
}
