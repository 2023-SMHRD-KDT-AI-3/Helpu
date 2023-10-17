package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import db.SqlSessionManager;



public class reviewDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 게시글 전체조회 메소드 생성
	ArrayList<reviewDTO> list = new ArrayList<reviewDTO>();

	public ArrayList<reviewDTO> allList() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		list = (ArrayList) sqlSession.selectList("allList");

		sqlSession.close();

		return list;
	}

	// 게시글을 등록하기 위한 메소드
	public int write(reviewDTO board) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		int cnt = sqlSession.insert("write", board);

		sqlSession.close();

		return cnt;
	}

}
