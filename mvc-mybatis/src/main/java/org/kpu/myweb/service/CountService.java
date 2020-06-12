package org.kpu.myweb.service;

import java.util.List;

import org.kpu.myweb.domain.CountVO;

public interface CountService {
	
	public CountVO readCount(String role) throws Exception;
	public List<CountVO> readCountList() throws Exception;
	
}
