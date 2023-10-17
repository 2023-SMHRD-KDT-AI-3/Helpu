package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.productDAO;
import model.productDTO;
import model.reviewDAO;
import model.reviewDTO;

public class productService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String pro_code = request.getParameter("num");
		
		productDTO product = new productDTO();
		productDAO dao = new productDAO();
		
		product=dao.product(pro_code);
		
		ArrayList<reviewDTO> review_list = new ArrayList<reviewDTO>();
		reviewDAO r_dao = new reviewDAO();
		review_list = r_dao.reviewList(pro_code);
		
		System.out.println(review_list.get(0).getRv_content());
		
		request.setAttribute("r_list", review_list);
		
		// 정보를 가지고 WEB-INF/product.jsp으로 넘어감
		request.setAttribute("product", product);
		
		
		return "goproduct.do";
	}

}
