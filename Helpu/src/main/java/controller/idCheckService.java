package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.memberDAO;
import model.memberDTO;

public class idCheckService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		try {
			String id = request.getParameter("id");

			memberDAO dao = new memberDAO();
			memberDTO member = dao.check(id);

			PrintWriter out;

			out = response.getWriter();
			if (member != null) {
				// 사용이 불가능한 id /데이터 O
				out.print("true");
			} else {
				// 사용이 가능한 id / 데이터 X
				out.print("false");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

}
