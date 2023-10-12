package controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.searchDAO;
import model.searchDTO;

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
			
			// 객체 생성
			searchDAO dao = new searchDAO();
			
			// sql문 받아오는 작업
			ArrayList<searchDTO> list= dao.allList(search);
			
			request.setAttribute("list", list);

			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		return url;
	}

}
