package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.memberDAO;
import model.memberDTO;

public class JoinService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 1. 인코딩
		String url = "";
		try {
			request.setCharacterEncoding("utf-8");
			// 데이터 수집
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String[] m_allergy = request.getParameterValues("m_allergy");
			String birthdate = request.getParameter("birthdate");
			String phone_number = request.getParameter("phone_number");
			String gender = request.getParameter("gender");
			String mem_name = request.getParameter("mem_name");
			String address = request.getParameter("m_address");

			System.out.println(address);
			
			// 체크박스 확인
			String allergy = "";
			for (int i = 0; i < m_allergy.length; i++) {
				allergy += m_allergy[i] + ",";
			}

			// DB 전달

			// 회원가입에 필요한 정보 가져오기.
			memberDTO m = new memberDTO(id, pw, allergy, birthdate, phone_number, gender, address, mem_name);
			memberDAO dao = new memberDAO();
			System.out.println(m);
			System.out.println(m.getId());
			int result  = dao.join(m);
			if (result  == 1) {
				url = "gostart.do";
			} else {
				url = "gojoin.do";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return url;
	}

}
