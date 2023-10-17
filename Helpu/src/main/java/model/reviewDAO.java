package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import db.SqlSessionManager;


public class reviewDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 게시글 전체조회 메소드 생성
	ArrayList<reviewDTO> Review_List = new ArrayList<reviewDTO>();

	public ArrayList<reviewDTO> allList() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		Review_List = (ArrayList) sqlSession.selectList("Review_List");

		sqlSession.close();

		return Review_List;
	}

	// 게시글을 등록하기 위한 메소드
	public int write(reviewDTO board) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("write", board);

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
