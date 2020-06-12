package org.kpu.myweb.service;

import java.util.List;

import org.kpu.myweb.domain.CountVO;
import org.kpu.myweb.persistence.CountDAO;
import org.kpu.myweb.persistence.MemberDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CountServiceImpl implements CountService {
	

	@Autowired
	private CountDAO countDAO;

	public CountVO readCount(String role) throws Exception {
		return countDAO.read(role);
	}
	
	public List<CountVO> readCountList() throws Exception{
		return countDAO.readList();
	}

}
