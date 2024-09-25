package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.CustomerDAO;
import com.smhrd.model.CustomerDTO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String cust_id = request.getParameter("cust_id");
		String cust_pw = request.getParameter("cust_pw");
		String cust_nick = request.getParameter("cust_nick");
		String cust_email = request.getParameter("cust_email");
		String cust_gender = request.getParameter("cust_gender");
		String cust_birthdate = request.getParameter("cust_birthdate");
		String cust_addr = request.getParameter("cust_addr");
		String cust_phone = request.getParameter("cust_phone");
//		String joined_at = request.getParameter("joined_at");
//		double lat = (double)request.getParameter("lat");
//		double lon = (double)request.getParameter("lon");

		CustomerDTO dto = new CustomerDTO(cust_id, cust_pw, cust_nick, cust_email, cust_gender, cust_birthdate,
				cust_addr, cust_phone);
		CustomerDAO dao = new CustomerDAO();
		int result = dao.join(dto);

		if (result == 1) {
			// 회원가입 성공! -> 회원가입한 email 값을 가지고 페이지 이동
			request.setAttribute("cust_id", cust_id);

			RequestDispatcher rd = request.getRequestDispatcher("main.html");
			rd.forward(request, response);
		} else {
			// 회원가입 실패!
			response.sendRedirect("LoginJoin.html");
		}

	}

}
