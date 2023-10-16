package controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.memberDAO;
import model.memberDTO;

public class bannerChange implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
			
			String[] allergy = request.getParameterValues("food");
			
			String allergis="";
			for(int i = 0; i<allergy.length; i++) {
				allergis+=allergy[i]+",";
			}
			
			HttpSession session = request.getSession();
			memberDTO member = (memberDTO) session.getAttribute("info");
			
			member.setM_allergy(allergis);
			
			memberDAO dao = new memberDAO();
			dao.banner(member);
			
			session.setAttribute("info", member);
			
			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		
		return "gomain.do";
	}

}
