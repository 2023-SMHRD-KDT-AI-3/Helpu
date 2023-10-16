package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import db.SqlSessionManager;

public class productDAO {
	
	// ArrayList 미리 생성
		ArrayList<allergyDTO> list = new ArrayList();

	// 알레르기 유발 성분 리스트 가져오기
	public ArrayList<allergyDTO> allergyList() {
		
		// 항상있음 / 이유 : 나도일단 모름.
				SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
				
				// 항상있음 / 이유 : 나도일단 모름.
				SqlSession sqlSession = sqlSessionFactory.openSession(true); 
				
				// 알레르기 유발 성분 리스트 가져오기
				list = (ArrayList) sqlSession.selectList("allergy");		
		
				sqlSession.close();
				
				// 닫기 // 나도모름		

		return list;	
	}
	
	// 가져온 제품 코드로 제품 관련 정보 가져오기
	public productDTO product(String pro_code) {
		
		productDTO result = new productDTO();
		
		// 항상있음 / 이유 : 나도일단 모름.
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		
		// 항상있음 / 이유 : 나도일단 모름.
		SqlSession sqlSession = sqlSessionFactory.openSession(true); 
		
		// 가져온 제품 코드로 제품 관련 정보 가져오기
		result = (productDTO) sqlSession.selectOne("product",pro_code);
		
		// 닫기 // 나도모름		
		sqlSession.close();
		
	return result;
	}
	

		
}