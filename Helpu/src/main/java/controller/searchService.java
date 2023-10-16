package controller;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import model.allergyDTO;
import model.memberDTO;
import model.productDAO;
import model.productDTO;
import model.searchDAO;

public class searchService implements Command {

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) {

      try {
         // 인코딩
         request.setCharacterEncoding("utf-8");

         // 데이터 수집
         String search = request.getParameter("search");
        
         // 객체 생성
         searchDAO dao = new searchDAO();
         productDAO p_dao = new productDAO();
         
         // DB에서 검색한 식품 리스트 가져오기
         ArrayList<productDTO> list= dao.allList(search);
         // DB에서 알레르기 성분 가져오기
         ArrayList<allergyDTO> allergy = p_dao.allergyList();
         
         HttpSession session = request.getSession();
         memberDTO member = (memberDTO)session.getAttribute("info");
         // 로그인한 회원의 알레르기 유발 성분 리스트
         String[] m_allergy = member.getM_allergy().split(",");
         
         try {
        	 String check_allergy = request.getParameter("allergy");
        	 System.out.println(check_allergy);
        	 m_allergy=check_allergy.split(",");
        	 System.out.println("체크박스 사용함");
         }catch (Exception e) {
        	 System.out.println("체크박스 사용안함");
		}
         
         
         String haveIngredients="";
         String m_haveIngredients="";
         
         System.out.println(m_allergy.length);
         // 제품 원재료와 알레르기유발성분 비교
         for(int i=0; i<list.size(); i++) {
            // 제품 원재료 split으로 쪼개기
            String[] ingredients = list.get(i).getPro_ingredients().split(",");
            
            for(int j=0; j<ingredients.length;j++) {
               for(int k=0; k<allergy.size();k++) {
                  // 알레르기 유발성분이 있는지 비교확인
                  if(ingredients[j].contains(allergy.get(k).getAl_name())){
                     // 제품내 알레르기 유발성분 저장
                     haveIngredients+=ingredients[j]+",";               
                  }
               }
            }
         list.get(i).setPro_haveIngredients(haveIngredients);   
         }
         
          
         for(int i=0; i<list.size(); i++) {
            int cnt=0;
            String[] list_haveIngredients = list.get(i).getPro_haveIngredients().split(","); 
            for(int j =0; j<list_haveIngredients.length; j++) {
               for(int k=0; k<m_allergy.length; k++) {
                  if(list_haveIngredients[j].contains(m_allergy[k])) {
                     // 회원이 가지고 있는 알레르기 유발성분 저장
                     m_haveIngredients += m_allergy[k]+",";
                     // 회원이 가지고 있는 알레르기 성분 갯수
                     cnt++;
                  }
               }
            }
         // 회원이 가지고 있는 알레르기 성분 갯수 저장
         list.get(i).setPro_m_haveIngredients(m_haveIngredients);
         list.get(i).setPro_cnt(cnt);
         
         }
         
         Gson g=new Gson();
         String json=g.toJson(list); // [{    },{     }]
         response.setContentType("text/json;charset=utf-8");
         PrintWriter out=response.getWriter();
         out.println(json);
         
         System.out.println("기능완료");
         
      } catch (Exception e) {
         e.printStackTrace();
      }

      return null;
   }

}