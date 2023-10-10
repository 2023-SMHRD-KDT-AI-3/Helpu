package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class gologin implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		return "WEB-INF/login.jsp";
	}
}


