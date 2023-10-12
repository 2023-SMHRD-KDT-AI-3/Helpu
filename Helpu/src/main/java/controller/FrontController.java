package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import goPage.gobasket;
import goPage.gofavorites;
import goPage.gohistory;
import goPage.gojoin;
import goPage.gologin;
import goPage.gomain;
import goPage.gomypage;
import goPage.goproduct;
import goPage.gostart;

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

		// 초기화면 이동
		if (result.equals("gostart.do")) {
			gostart gostart = new gostart();
			url = gostart.execute(request, response);

			// 로그인 화면 이동
		} else if (result.equals("gologin.do")) {
			gologin gologin = new gologin();
			url = gologin.execute(request, response);

			// 로그인 기능 수행
		} else if (result.equals("LoginService.do")) {
			LoginService loginservice = new LoginService();
			url = loginservice.execute(request, response);

			// 회원가입 페이지1 이동
		} else if (result.equals("gojoin.do")) {
			gojoin gojoin = new gojoin();
			url = gojoin.execute(request, response);

			// 회원가입 기능 수행
		} else if (result.equals("JoinService.do")) {
			JoinService JoinService = new JoinService();
			url = JoinService.execute(request, response);

			// 즐겨찾기 페이지 이동
		} else if (result.equals("gofavorites.do")) {
			gofavorites gofavorites = new gofavorites();
			url = gofavorites.execute(request, response);

			// 상품페이지 이동
		} else if (result.equals("goproduct.do")) {
			goproduct goproduct = new goproduct();
			url = goproduct.execute(request, response);

			// 구매내역 페이지 이동
		} else if (result.equals("gohistory.do")) {
			gohistory gohistory = new gohistory();
			url = gohistory.execute(request, response);

			// 메인페이지 이동
		} else if (result.equals("gomain.do")) {
			gomain gomain = new gomain();
			url = gomain.execute(request, response);

			// 마이페이지 이동
		} else if (result.equals("gomypage.do")) {
			gomypage gomypage = new gomypage();
			url = gomypage.execute(request, response);

			// 정보수정기능
		} else if (result.equals("ChangeService.do")) {
			ChangeService changeservice = new ChangeService();
			changeservice.execute(request, response);

			// 로그아웃 실행
		} else if (result.equals("logout.do")) {
			logoutService logout = new logoutService();
			url = logout.execute(request, response);

			//
		} else if (result.equals("FillteringService.do")) {
			FillteringService filltering = new FillteringService();
			url = filltering.execute(request, response);

		} else if (result.equals("gobasket.do")) {
			gobasket gobasket = new gobasket();
			url = gobasket.execute(request, response);
			// 검색 기능
		} else if (result.equals("SearchService.do")) {
			searchService gosearch = new searchService();
			url = gosearch.execute(request, response);
		}

		// 각각의 기능에서 받은 url로 이동
//		if (url != null) {
//			if (url.indexOf(".do") != -1) {
//				// url이 .do -> response.sendRedirect
//				response.sendRedirect(url);
//			} else {
//				// url이 .do가 아니면 -> forward
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
//			}
//		}

	}
}
