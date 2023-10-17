package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import db.SqlSessionManager;



public class reviewDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 게시글 전체조회 메소드 생성
	ArrayList<reviewDTO> list = new ArrayList<reviewDTO>();

	public ArrayList<reviewDTO> reviewList(String pro_code) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		list = (ArrayList) sqlSession.selectList("reviewList",pro_code);

		sqlSession.close();

		return list;
	}

	// 게시글을 등록하기 위한 메소드
	public int write(reviewDTO dto) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("write", dto);

		sqlSession.close();

		return cnt;
	}

	// 게시글 하나만 내용을 확인 할 수 있는 기능
	public reviewDTO detail(String num) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		reviewDTO dto = sqlSession.selectOne("detail", num);

		sqlSession.close();

		return dto;
	}
}