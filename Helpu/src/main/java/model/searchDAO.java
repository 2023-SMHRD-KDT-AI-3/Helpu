package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.smhrd.model.Board;

public class searchDAO {

	// 게시글 전체조회 메소드 생성
	ArrayList<Board> list = new ArrayList<Board>();

	public ArrayList<Board> allList() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		list = (ArrayList) sqlSession.selectList("allList");

		sqlSession.close();

		return list;
	}
}
