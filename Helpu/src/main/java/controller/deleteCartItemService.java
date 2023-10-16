package controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.cartDAO;
import model.cartDTO;

public class deleteCartItemService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			  String id = request.getParameter("id");
	            int pro_code = Integer.parseInt(request.getParameter("productCode"));
	            
	            
	            cartDTO dto = new cartDTO();
	            dto.setId(id);
	            dto.setPro_code(pro_code);
	            
	            System.out.println(id);
	            System.out.println(pro_code);
	            
	            cartDAO dao = new cartDAO();
	            int cnt = dao.deleteCartItem(dto);
			
	          
	            
	            
		}
		catch (Exception e) {
            e.printStackTrace();           
        }
        return null;
	}
}