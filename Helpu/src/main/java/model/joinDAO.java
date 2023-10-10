package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import db.SqlSessionManagerFactory;

public class joinDAO {

	// SqlSessionManager를 통해서 만들어진 기능 불러오기

	SqlSessionFactory sqlSessionFactory = SqlSessionManagerFactory.getSqlSession();

	// 회원가입을 위한 DB 작업을 실행하는 메소드
	// 메소드의 매개변수는 JoinService에서 넘겨주는 데이터 타입에 맞추어 받아오기
	public int join(joinDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		// 받아온 데이터를 연결
		int cnt = sqlSession.insert("join", dto);
		sqlSession.close();
		return cnt;

	}

	public joinDTO login(joinDTO dto) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		joinDTO info = sqlSession.selectOne("login", dto);
		sqlSession.close();
		return info;

	}

	// 회원의 가입 여부를 판단할 수 있는 비동기 통신용 메소드
	public joinDTO check(String email) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		joinDTO dto = sqlSession.selectOne("check", email);
		sqlSession.close();

		return dto;
	}
}
