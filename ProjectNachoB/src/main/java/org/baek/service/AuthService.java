package org.baek.service;

import org.baek.domain.AuthVO;

public interface AuthService {
	public int register(AuthVO vo);
	public int remove(AuthVO vo);
}
