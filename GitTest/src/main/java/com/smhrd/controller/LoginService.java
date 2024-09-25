package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.CustomerDAO;
import com.smhrd.model.CustomerDTO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. 인코딩
		request.setCharacterEncoding("UTF-8");

		// 2. 데이터 꺼내오기
		String cust_id = request.getParameter("cust_id");
		String cust_pw = request.getParameter("cust_pw");

		// 3. 데이터 처리하기 -> DAO -> DB
		CustomerDAO dao = new CustomerDAO();
		CustomerDTO dto = new CustomerDTO();
		dto.setCust_id(cust_id);
		dto.setCust_pw(cust_pw);

		// 로그인 성공시 해당 회원의 모든 정보를 리턴 받는다!
		CustomerDTO info = dao.login(dto);

		// 4. 결과 출력하기 -> 로그인 성공/실패 여부에 상관없이 무조건 main.jsp 이동!
		// 단! 로그인 성공시 session 영역에 회원의 정보를 저장한 상태로 페이지 이동!
		if (info != null) {
			// session 영역 활용!
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
			
			System.out.println("로그인 성공!");
			
		}
		response.sendRedirect("main.jsp");

	}

}
