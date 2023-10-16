package controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.cartDAO;
import model.cartDTO;

public class UpdateProductQuantityService implements Command {

	@Override

	public String execute(HttpServletRequest request, HttpServletResponse response) {
        try {
            int su = Integer.parseInt(request.getParameter("su"));  
            int productCode = Integer.parseInt(request.getParameter("productCode"));
            String id = request.getParameter("id");
            
            // cartDTO
            cartDTO dto = new cartDTO();
            dto.setPro_code(productCode);
            dto.setSu(su);  
            dto.setId(id); 
            
            // DAO
            cartDAO dao = new cartDAO();
            int result = dao.updateProductQuantity(dto);

            System.out.println("su: " + su); 
            System.out.println("productCode: " + productCode);
            System.out.println("id: " + id);
           

            if (result > 0) {
                return "gomain.do";
            } else {
                return "gomain.do";
            }

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}