package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.productDAO;
import model.productDTO;

public class productService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String pro_code = request.getParameter("num");
		
		productDTO product = new productDTO();
		productDAO dao = new productDAO();
		
		product=dao.product(pro_code);
		
		// 정보를 가지고 WEB-INF/product.jsp으로 넘어감
		request.setAttribute("product", product);
		
		
		return "goproduct.do";
	}

}
