package org.baek.domain;

import org.baek.domain.Criteria;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Criteria {
	private int pageNum;
	private int amount;
	private String searchKeyword;
	private String searchType;
}
