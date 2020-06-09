package org.kpu.myweb.service;

import java.util.List;

import org.kpu.myweb.domain.MemberVO;

public interface MemberService {
	
	public MemberVO readMember(String id) throws Exception;
	public List<MemberVO> readMemberList() throws Exception;
	public void addMember(MemberVO student) throws Exception;
	public void deleteMember(String id) throws Exception; 
	public void updateMember(MemberVO student) throws Exception;
	
}
