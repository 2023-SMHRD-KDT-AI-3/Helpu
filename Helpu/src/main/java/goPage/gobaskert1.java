package goPage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Command;

public class gobaskert1 implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		return "WEB-INF/basket1.jsp";
	}

}
