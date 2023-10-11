package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class logoutService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		session.invalidate();
		// 기능 확인
		System.out.println("로그아웃 완료");
		// 로그아웃 후 start페이지로 이동
		return "start.do";
	}

}
