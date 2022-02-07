package org.baek.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TicketingVO {
	private String mid, title, theater, tkdate, tktime, seat;
	private int tkpeople, tno;
}
