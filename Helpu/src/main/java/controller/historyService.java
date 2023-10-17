package controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.cartDAO;
import model.cartDTO;
import model.memberDTO;
import model.orderDAO;
import model.orderDTO;
import model.orderDetailDTO;

public class historyService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
			
			int payment = Integer.valueOf(request.getParameter("payment"));
			System.out.println(payment);
			String pro_codes = request.getParameter("pro_codes");
			System.out.println(pro_codes);
			String pro_sus = request.getParameter("pro_sus");
			System.out.println(pro_sus);
			
			HttpSession session = request.getSession();
			memberDTO mem = (memberDTO) session.getAttribute("info");
			String id = mem.getId();
			System.out.println(id);
			
			
			
			orderDTO dto = new orderDTO();
			dto.setId(id);
			dto.setPrice(payment);

			orderDAO dao = new orderDAO();
			dao.insertOrder(dto);
			System.out.println("주문테이블 insert 완료");
			
			int order_code = dao.selectCode();
			System.out.println("주문번호 select 완료");
			System.out.println(order_code);
			
			
			cartDAO c_dao = new cartDAO();
			
			String[] pro_code= pro_codes.split(",");
			String[] pro_su=pro_sus.split(",");
			for(int i=0; i<pro_code.length; i++) {
				if(pro_code[i]!="") {
					orderDetailDTO d_dto = new orderDetailDTO();
					d_dto.setOrder_code(order_code);
					d_dto.setPro_code(Integer.valueOf(pro_code[i]));
					d_dto.setOd_cnt(Integer.valueOf(pro_su[i]));
					dao.insertOrderDetail(d_dto);
					
					cartDTO c_dto = new cartDTO();
					c_dto.setId(id);
					c_dto.setPro_code(Integer.valueOf(pro_code[i]));
					c_dao.deleteCartItem(c_dto);
				}
			}
			System.out.println("장바구니 삭제 및 상세주문테이블 insert완료");
			
			
		} catch (UnsupportedEncodingException e) {

			e.printStackTrace();
		}

		return null;
	}

}
