package org.baek.mapper;

import org.baek.domain.AuthVO;

public interface AuthMapper {
	public int register(AuthVO vo);
	public void remove(String mid);
}
