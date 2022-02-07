package org.baek.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MovieReplyVO {
	private int mrno, point, mno;
	private String mid, content, title;
	private Date regdate;
}
