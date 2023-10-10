package controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.memberDAO;
import model.memberDTO;

public class LoginService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 로그인을 진행할 수 있는 기능 이동
		String url="";
				try {
					request.setCharacterEncoding("utf-8");
					
					String id = request.getParameter("id");
					String pw = request.getParameter("pw");
					
					memberDAO dao = new memberDAO();
					
					// Member타입에 입력받은 email, pw 담아서 한번에 전달!
					memberDTO member = new memberDTO();
					member.setId(id);
					member.setPw(pw);
					
					// 로그인이라고 하는 메소드가 성공적으로 실행되면
					// 해당 회원의 모든 정보를 리턴값으로 받아 올것!
					System.out.println("!!!");
					memberDTO info = dao.login(member);
					
					// info의 결과에 따라 페이지 이동 진행!
					if (info != null) {
						// 로그인 성공~! info정보를 가지고 페이지 이동!
						// 세션 영역을 서블릿에서 사용하기 위해서는 객체 선언부터 필요하다!
						// 클라이언트 요청한 값과 응답에 대하여 공유하기 위해서는 해당 session을
						// request값으로 부터 받아와야 한다!
						// HttpSession session = request.getSession();
						// session.setAttribute("info", info);
						System.out.println("성공");
						url="gomain.do";
						System.out.println("이동");
					}else{
						System.out.println("실패");
						System.out.println("이동");
						url="gologin.do";
					}
					
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}

				return url;
	}

}
