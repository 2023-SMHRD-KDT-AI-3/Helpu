package goPage;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import controller.Command;
import model.memberDTO;
import model.member_orderDTO;
import model.orderDAO;

public class gohistory implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		orderDAO dao = new orderDAO();
		
		HttpSession session = request.getSession();
		memberDTO mem = (memberDTO) session.getAttribute("info");
		String id = mem.getId();
		
		ArrayList<member_orderDTO> order_list = dao.selectOrderList(id);

		
		request.setAttribute("olist", order_list);
		
		
		return "WEB-INF/history.jsp";
	}

}
