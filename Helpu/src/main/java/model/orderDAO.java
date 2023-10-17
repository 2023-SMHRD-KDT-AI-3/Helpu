package model;

import java.util.ArrayList;

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
	
	public ArrayList<member_orderDTO> selectOrderList(String id){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		ArrayList<member_orderDTO> dto_list = (ArrayList)sqlSession.selectList("selectOrderList",id);
		sqlSession.close();
		return dto_list;
	}
}
