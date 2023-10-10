package db;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManagerFactory {

	private static SqlSessionFactory sqlSessionFactory;

	// 프로그램이 시작된다면 SqlSessionFactory를 바로 초기화 할 수 있는 구조 만들기
	static {
		try {
			// SqlSessionFactory를 사용하기 위하여 필요한 DB정보 읽어오기!
			String resource = "db/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// new SqlSessionFactoryBuilder().build에 해당 결과를 담아서 사용할 수 있는 메소드 생성하기
	public static SqlSessionFactory getSqlSession() {
		return sqlSessionFactory;
	}
}
