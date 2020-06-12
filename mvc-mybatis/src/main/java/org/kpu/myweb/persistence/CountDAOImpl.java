package org.kpu.myweb.persistence;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.kpu.myweb.domain.CountVO;
import org.kpu.myweb.domain.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CountDAOImpl implements CountDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "org.kpu.myweb.mapper.CountMapper";

	
	public CountVO read(String role) throws Exception {
		
		CountVO vo = sqlSession.selectOne(namespace+".selectByid", role);
		return vo;   
	}
 
	public List<CountVO> readList() throws Exception {
		List<CountVO> countlist = new ArrayList<CountVO>();
		countlist = sqlSession.selectList(namespace + ".selectAll");
		return countlist;
	}
	
	public void updatePlus(String role) throws Exception {
		// TODO Auto-generated method stub
	    sqlSession.update(namespace + ".updatePlus", role);
	}
	
	public void updateMinus(String role) throws Exception {
		// TODO Auto-generated method stub
	    sqlSession.update(namespace + ".updateMinus", role);
	}

}
