package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import db.SqlSessionManager;

public class orderDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int insertOrder(orderDTO dto) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		// 받아온 데이터를 연결
		int cnt = sqlSession.insert("orderInsert", dto);
		sqlSession.close();
		return cnt;
	}
	
	public int selectCode() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int result = (Integer)sqlSession.selectOne("selectCode");
		sqlSession.close();
		return result;
	}
	
	public int insertOrderDetail(orderDetailDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		int cnt = sqlSession.insert("insertOrderDetail", dto);
		sqlSession.close();
		return cnt;
	}
}
