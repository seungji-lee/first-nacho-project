package org.baek.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardVO {
	private long bno;
	private int replycnt, hit;
	private String title,content,mid,mname;
	private Date regdate,updatedate;
}
