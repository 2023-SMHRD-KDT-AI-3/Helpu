package controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.memberDAO;
import model.memberDTO;
import model.productDAO;
import model.productDTO;

public class FillteringService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		productDAO dao = new productDAO();
		String list = dao.filltering();
		
		request.setAttribute("list", list);
		
		return "gomain.do";

	}

}
