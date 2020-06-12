package org.kpu.myweb.service;

import java.util.List;

import org.kpu.myweb.domain.MemberVO;
import org.kpu.myweb.persistence.CountDAO;
import org.kpu.myweb.persistence.MemberDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;

	@Autowired
	private CountDAO countDAO;

	public MemberVO readMember(String id) throws Exception {
		return memberDAO.read(id);
	}
	
	public List<MemberVO> readMemberList() throws Exception{
		return memberDAO.readList();
	}
	
	@Transactional( propagation=Propagation.REQUIRED, isolation=Isolation.READ_COMMITTED, timeout = 10 )
	public void addMember(MemberVO member) throws Exception {
		memberDAO.add(member);
		countDAO.updatePlus(member.getMem_role());
	}
	
	@Transactional( propagation=Propagation.REQUIRED, isolation=Isolation.READ_COMMITTED, timeout = 10 )
	public void deleteMember(String id) throws Exception {
		MemberVO vo = memberDAO.read(id);
		memberDAO.delete(id);
		countDAO.updateMinus(vo.getMem_role());
	}
	
	public void updateMember(MemberVO student) throws Exception {
		memberDAO.update(student);
	}

}
