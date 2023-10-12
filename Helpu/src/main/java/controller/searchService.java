package controller;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import model.productDTO;
import model.searchDAO;

public class searchService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 로그인을 진행할 수 있는 기능 이동
		String url = "";
		try {
			// 인코딩
			request.setCharacterEncoding("utf-8");

			// 데이터 수집
			String search = request.getParameter("search");
			System.out.println(search); 
			// 객체 생성
			searchDAO dao = new searchDAO();
			
			// sql문 받아오는 작업
			ArrayList<productDTO> list= dao.allList(search);
			Gson g=new Gson();
			String json=g.toJson(list);
			//request.setAttribute("list", list);
			response.setContentType("text/json;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.println(json);
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

}
