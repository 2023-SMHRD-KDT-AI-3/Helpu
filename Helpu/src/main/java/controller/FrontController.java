package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// FrontController 패턴
		// 어떠한 요청이 들어오더라도 모든 요청이 하나의 servlet으로 들어올 수 있도록 만드는 구조

		// 1. 내가 요청한 기능이 어떤 기능인지 판단
		// 2. 해당하는 기능을 수행 할 수 있도록 기능 연결

		request.setCharacterEncoding("utf-8");

		String Uri = request.getRequestURI();
		System.out.println("요청URI : " + Uri);

		// 프로젝트 이름만 찾아오는 기능
		String contexPath = request.getContextPath();
		System.out.println("프로젝트 이름 : " + contexPath);

		// 필요한 요청에 대한 내용만 가져오기
		// substring()
		String result = Uri.substring(contexPath.length() + 1);
		System.out.println("결과 : " + result);

		String url = "";
		if (result.equals("start.do")) {
			start gostart = new start();
			url = gostart.execute(request, response);
		}
		// 각각의 기능에서 받은 url로 이동
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);

	}
}
