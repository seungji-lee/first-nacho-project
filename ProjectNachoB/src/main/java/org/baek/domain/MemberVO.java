package org.baek.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberVO {
	private String mid, mpw, mchpw, mname, memail;
	private List<AuthVO> authList;		// 권한이 여러개이기 때문에  list

}
