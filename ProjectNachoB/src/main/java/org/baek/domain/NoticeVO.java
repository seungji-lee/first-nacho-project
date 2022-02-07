package org.baek.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NoticeVO {
	private long ntno;
	private String title,content,mid,mname;
	private Date regdate,updatedate;
}
