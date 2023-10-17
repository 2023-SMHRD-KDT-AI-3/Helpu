package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.CartProductVO;
import model.cartDAO;

public class recentProductService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			 request.setCharacterEncoding("utf-8");
			 
			String id = request.getParameter("id");

			cartDAO dao = new cartDAO();
			ArrayList<CartProductVO> recentProducts = dao.getCartList(id);

			request.setAttribute("recentProducts", recentProducts);

			Gson g = new Gson();
			String json = g.toJson(recentProducts); // [{ },{ }]
			response.setContentType("text/json;charset=utf-8");
			
			PrintWriter out=response.getWriter();
	       
			out.println(json);
			
			System.out.println("기능완료");
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
