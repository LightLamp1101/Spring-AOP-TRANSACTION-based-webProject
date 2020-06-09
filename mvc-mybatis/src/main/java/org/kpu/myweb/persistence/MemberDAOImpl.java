package org.kpu.myweb.persistence;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.kpu.myweb.domain.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "org.kpu.myweb.mapper.MemberMapper";

	public MemberVO read(String mem_id) throws Exception {
	
		MemberVO vo = sqlSession.selectOne(namespace+".selectByid", mem_id);
		return vo;   
	}
 
	public List<MemberVO> readList() throws Exception {
		List<MemberVO> memberlist = new ArrayList<MemberVO>();
		memberlist = sqlSession.selectList(namespace + ".selectAll");
		return memberlist;
	}
	
	public void add(MemberVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	public void delete(String mem_id) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".delete", mem_id);
	}

	public void update(MemberVO member) throws Exception {
		// TODO Auto-generated method stub
	    sqlSession.update(namespace + ".update", member);
	}
	

}
