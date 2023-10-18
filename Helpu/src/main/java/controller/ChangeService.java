package controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.memberDAO;
import model.memberDTO;

public class ChangeService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 로그인을 진행할 수 있는 기능 이동
		String url = "";
		try {
			request.setCharacterEncoding("utf-8");

			String input_pw = request.getParameter("pw");
			System.out.println(input_pw);
			String input_check = request.getParameter("check");
			System.out.println(input_check);
			String input_number = request.getParameter("number");
			System.out.println(input_number);
			String input_address = request.getParameter("address");
			System.out.println(input_address);
			String[] m_allergy = request.getParameterValues("food");

			memberDAO dao = new memberDAO();

			String allergy = "";
			for (int i = 0; i < m_allergy.length; i++) {
				allergy += m_allergy[i] + ",";
			}

			HttpSession session = request.getSession();
			memberDTO login = (memberDTO) session.getAttribute("info");
			
			

			// 비밀번호 == 비밀번호 확인
			if (input_pw.equals(input_check)) {
				String pw = (input_pw.equals(null)) ? login.getPw() : input_pw;
				String number = (input_number.equals(null)) ? login.getPhone_number() : input_number;
				String address = (input_address.equals(null)) ? login.getAddress() : input_address;
				String allergys = (m_allergy.length == 0) ? login.getM_allergy() : allergy;

				// Member타입에 입력받은 값 담기
				memberDTO member = new memberDTO();
				// 비교용(PK)아이디값
				member.setId(login.getId());
				member.setPw(pw);
				member.setPhone_number(number);
				member.setAddress(address);
				member.setM_allergy(allergy);

				int result = dao.change(member);
				

				// info의 결과에 따라 페이지 이동 진행!
				if (result != 0) {
					// 로그인 성공~! info정보를 가지고 페이지 이동!
					// 세션 영역을 서블릿에서 사용하기 위해서는 객체 선언부터 필요하다!
					// 클라이언트 요청한 값과 응답에 대하여 공유하기 위해서는 해당 session을
					// request값으로 부터 받아와야 한다!
					System.out.println("성공");
					url = "gostart.do";
				} else {
					System.out.println("실패");
					url = "gomain.do";
				}

			} else {
				// 비밀번호 != 비밀번호 확인
				url = "gomypage.do";
			}

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		return url;
	}

}
