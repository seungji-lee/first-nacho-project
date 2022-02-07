package org.baek.domain;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MovieVO {
	private int mno, rdate, rtime, hit;
	private String title, genre1, genre2, content, mainact1, mainact2, supportact1, supportact2, director, poster, preview, ming, age;
	private double mpoint;
}
