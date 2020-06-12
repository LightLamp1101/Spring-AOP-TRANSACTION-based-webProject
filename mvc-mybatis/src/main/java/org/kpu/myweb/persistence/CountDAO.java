package org.kpu.myweb.persistence;

import java.util.List;

import org.kpu.myweb.domain.CountVO;
import org.kpu.myweb.domain.MemberVO;

public interface CountDAO {

	public List<CountVO> readList() throws Exception;
	public CountVO read(String role) throws Exception;
	public void updatePlus(String role) throws Exception;
	public void updateMinus(String role) throws Exception;

}
