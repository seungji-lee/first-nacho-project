package org.baek.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReplyVO {
	
	private long rno, bno;
	private String reply, mid , mname;
	private Date regdate , updatedate;
	private String strRegdate, strUpdatedate;
	

}
