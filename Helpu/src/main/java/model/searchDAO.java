package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import db.SqlSessionManager;

public class searchDAO {
	
	// 항상있음 / 이유 : 나도일단 모름.
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 게시글 전체조회 메소드 생성
	
	// ArrayList 미리 생성
	ArrayList<productDTO> list = new ArrayList<productDTO>();
	
	// ArrayList<searchDTO> 메소드 생성
	public ArrayList<productDTO> allList(String search) {
	//									 가지고 가는 값
		
		// 항상있음 / 이유 : 나도일단 모름.
		SqlSession sqlSession = sqlSessionFactory.openSession(true); 
		
		// List 타입으로 받아야하기때문에 select 뒤에 List 같이써준다. //로그인은 one
		// search 값을 가지고 allList sql(searchMapper.xml)문으로 간다. 
		
		list = (ArrayList) sqlSession.selectList("allList",search);
		// 		리스트로 형변환
		sqlSession.close();
		// 닫기 // 나도모름

		return list;
	}

}
