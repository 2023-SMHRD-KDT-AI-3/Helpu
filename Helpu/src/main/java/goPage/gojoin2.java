package goPage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Command;

public class gojoin2 implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		return "WEB-INF/join2.jsp";
	}

}
