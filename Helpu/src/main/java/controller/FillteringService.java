package controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.google.gson.Gson;

import db.SqlSessionManager;
import model.allergyDTO;
import model.memberDAO;
import model.memberDTO;
import model.productDAO;
import model.productDTO;

public class FillteringService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// SqlSessionManager를 통해서 만들어진 기능 불러오기
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		// 전체 제품 및 알러지유발성분 가져오기
		ArrayList<productDTO> list = (ArrayList)sqlSession.selectList("filltering");
		ArrayList<allergyDTO> allergy = (ArrayList)sqlSession.selectList("allergy");
		sqlSession.close();

		HttpSession session = request.getSession();
		memberDTO member = (memberDTO)session.getAttribute("info");
		String[] m_allergy = member.getM_allergy().split(",");
		
		// 제품 원재료와 알레르기유발성분 비교
		for(int i=0; i<list.size(); i++) {
			// 제품 원재료 split으로 쪼개기
			String[] ingredients = list.get(i).getPro_ingredients().split(",");
			
			for(int j=0; j<ingredients.length;j++) {
				for(int k=0; k<allergy.size();k++) {
					// 알레르기 유발성분이 있는지 비교확인
					if(ingredients[j].equals(allergy.get(k).getAl_name())){
						// 제품내 알레르기 유발성분 저장
						list.get(i).getPro_haveIngredients().add(ingredients[j]);					
					}
				}
			}
		}
		 
		
		for(int i=0; i<list.size(); i++) {
			int cnt=0;
			for(int j =0; j<list.get(i).getPro_haveIngredients().size(); j++) {
				for(int k=0; k<m_allergy.length; k++) {
					if(list.get(i).getPro_haveIngredients().get(j).equals(m_allergy[k])) {
						list.get(i).getPro_m_haveIngredients().add(m_allergy[k]);
						cnt++;
					}
				}
			}
		list.get(i).setPro_cnt(cnt);
		}
		
	    Gson g=new Gson();
	    String json=g.toJson(list); // [{    },{     }]
	    session.setAttribute("data", json );
	    session.setAttribute("list", list );
	    
		return "gomain.do";

	}

}
