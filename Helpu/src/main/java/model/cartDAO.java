package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import db.SqlSessionManager;

public class cartDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	//상품 추가
	public int cartInsert(cartDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		// 받아온 데이터를 연결
		int cnt = sqlSession.insert("cartInsert", dto);
		sqlSession.close();
		return cnt;

	}
	// 수량 업데이트
	public int updateProductQuantity(cartDTO dto) {
	    SqlSession sqlSession = sqlSessionFactory.openSession(true);
	   
	        int cnt = sqlSession.update("updateProductQuantity", dto);
	        
	        sqlSession.close();
	        return cnt;
	    
	}
	// 장바구니 페이지에 상품 출력
	public ArrayList<CartProductVO> getCartList(String id) {
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		ArrayList<CartProductVO> list = (ArrayList) sqlSession.selectList("getCartList", id);
		sqlSession.close();
		return list;
	}
	// 장바구니 삭제 
	 public int deleteCartItem(cartDTO dto) {
	        SqlSession sqlSession = sqlSessionFactory.openSession(true);
	        int cnt = sqlSession.delete("deleteCartItem", dto);
	        sqlSession.close();
	        return cnt;
	    }
	
	
	
}
