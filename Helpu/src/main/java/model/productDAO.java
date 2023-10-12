package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.google.gson.Gson;

import db.SqlSessionManager;

public class productDAO {
	
	// SqlSessionManager를 통해서 만들어진 기능 불러오기
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public String filltering() {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		// 전체 제품 및 알러지유발성분 가져오기
		ArrayList<productDTO> list = (ArrayList)sqlSession.selectList("filltering");
		ArrayList<allergyDTO> allergy = (ArrayList)sqlSession.selectList("allergy");
		sqlSession.close();
		
		ArrayList<productDTO> products = new ArrayList<productDTO>();
		
		for(int i=0; i<list.size(); i++) {
			int cnt=0;
			String allergies = "";
			// 알레르기 유발성분 split으로 쪼개기
			String[] ingredients = list.get(i).getPro_ingredients().split(",");
			for(int j=0; j<ingredients.length;j++) {
				for(int k=0; k<allergy.size();k++) {
					// 알레르기 유발성분이 있는지 비교확인
					if(ingredients[j].equals(allergy.get(k).getAl_name())){
						cnt++;
						allergies+=ingredients[j]+",";					
					}
				}
			}
			// 회원과 겹치는 성분 저장
			list.get(i).setPro_haveIngredients(allergies);
			// 회원과 겹치는 성분 갯수 저장
			list.get(i).setPro_cnt(cnt);
			// 제품리스트에 저장
			products.add(list.get(i));
		}
		System.out.println(products.get(1).getPro_cnt());
	    Gson g=new Gson();
	    String json=g.toJson(products);
	    System.out.println(json); // [{    },{     }]
		return json;	
	}
}