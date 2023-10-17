package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.reviewDAO;
import model.reviewDTO;

public class reviewService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pro_code = request.getParameter("pro_code");
		String content = request.getParameter("content");
		
		reviewDTO review = new reviewDTO();
		review.setId(id);
		review.setPro_code(Integer.valueOf(pro_code));
		review.setRv_content(content);
		
		reviewDAO dao = new reviewDAO();
		dao.write(review);
		
		return null;
	}

}
