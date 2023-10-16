package controller;


import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.cartDAO;
import model.cartDTO;

public class basketService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
        try {
            String id = request.getParameter("id");
            int pro_code = Integer.parseInt(request.getParameter("pro_code"));
            // CartVO
            cartDTO dto=new cartDTO();
            dto.setId(id);
            dto.setPro_code(pro_code);
            
            // DAO
            cartDAO dao=new cartDAO();
            int cnt=dao.cartInsert(dto);
            
           
            
            PrintWriter out=response.getWriter();
            out.println(cnt);
            
            
        } catch (Exception e) {
            e.printStackTrace();           
        }
        return null;
    }
}