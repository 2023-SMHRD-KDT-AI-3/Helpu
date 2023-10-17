package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.allergyDTO;
import model.memberDTO;
import model.productDAO;
import model.productDTO;
import model.reviewDAO;
import model.reviewDTO;
import model.searchDAO;

public class productService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String pro_code = request.getParameter("num");
		
		productDTO product = new productDTO();
		productDAO p_dao = new productDAO();
		
		
		product=p_dao.product(pro_code);
		
		HttpSession session = request.getSession();
		memberDTO member = (memberDTO) session.getAttribute("info");
		
		ArrayList<allergyDTO> allergy = p_dao.allergyList();
		
		String[] m_allergy = member.getM_allergy().split(",");
		String[] pro_allergy = product.getPro_ingredients().split(",");
		 
        String haveIngredients="";
        String m_haveIngredients="";
        
        System.out.println(m_allergy.length);
        // 제품 원재료와 알레르기유발성분 비교
       
           for(int i=0; i<pro_allergy.length;i++) {
              for(int j=0; j<allergy.size();j++) {
                 // 알레르기 유발성분이 있는지 비교확인
                 if(pro_allergy[i].contains(allergy.get(j).getAl_name())){
                    // 제품내 알레르기 유발성분 저장
                    haveIngredients+=pro_allergy[i]+",";               
                 }
              }
           }
           product.setPro_haveIngredients(haveIngredients);
           haveIngredients="";
        
           // 제품내 알레르기 유발성분 리스트 
           String[] list_haveIngredients = product.getPro_haveIngredients().split(","); 
           int cnt=0;
           
           for(int i =0; i<list_haveIngredients.length; i++) {
              for(int j=0; j<m_allergy.length; j++) {
                 if(list_haveIngredients[i].contains(m_allergy[j])) {
                    // 회원이 가지고 있는 알레르기 유발성분 저장
                    m_haveIngredients += list_haveIngredients[i]+",";
                    // 회원이 가지고 있는 알레르기 성분 갯수
                    cnt++;
                 }
              }
           }
           // 회원이 가지고 있는 알레르기 성분 갯수 저장
           product.setPro_m_haveIngredients(m_haveIngredients);
           product.setPro_cnt(cnt);
           m_haveIngredients="";
        
		 
	// 정보를 가지고 WEB-INF/product.jsp으로 넘어감
	request.setAttribute("product", product);
		
		
	reviewDAO r_dao = new reviewDAO();
	ArrayList<reviewDTO> review_list = new ArrayList<reviewDTO>();
	if(r_dao.reviewList(pro_code).size() != 0 ) {
		review_list = r_dao.reviewList(pro_code);
		
		request.setAttribute("r_list", review_list);
	}
	return "goproduct.do";
}

}

		
		
		
		
		
		
		
		
		
		
		
