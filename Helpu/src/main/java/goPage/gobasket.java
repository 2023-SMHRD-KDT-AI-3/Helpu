package goPage;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Command;
import model.CartProductVO;
import model.cartDAO;

public class gobasket implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id=request.getParameter("id");
		cartDAO dao=new cartDAO();
		ArrayList<CartProductVO> clist=dao.getCartList(id);
		
		request.setAttribute("clist", clist);		
		return "WEB-INF/basket.jsp";
	}

}
