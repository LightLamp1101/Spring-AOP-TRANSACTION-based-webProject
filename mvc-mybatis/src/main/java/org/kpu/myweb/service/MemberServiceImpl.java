package org.kpu.myweb.service;

import java.util.List;

import org.kpu.myweb.domain.MemberVO;
import org.kpu.myweb.persistence.MemberDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;

	public MemberVO readMember(String id) throws Exception {
		return memberDAO.read(id);
	}
	
	public List<MemberVO> readMemberList() throws Exception{
		return memberDAO.readList();
	}
	
	public void addMember(MemberVO student) throws Exception {
		memberDAO.add(student);
	}
	
	public void deleteMember(String id) throws Exception {
		memberDAO.delete(id);
	}
	
	public void updateMember(MemberVO student) throws Exception {
		memberDAO.update(student);
	}

}
