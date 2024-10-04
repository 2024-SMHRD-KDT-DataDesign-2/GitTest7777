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
	    String cust_id = (String) request.getAttribute("cust_id");
	    String cust_pw = (String) request.getAttribute("cust_pw");
	    String cust_nick = (String) request.getAttribute("cust_nick");
	    String cust_email = (String) request.getAttribute("cust_email");
	    String cust_gender = (String) request.getAttribute("cust_gender");
	    String cust_birthdate = (String) request.getAttribute("cust_birthdate");
	    String cust_addr = (String) request.getAttribute("cust_addr");
	    String cust_phone = (String) request.getAttribute("cust_phone");
	    System.out.println(cust_phone);

	    // getAttribute()로 lat과 lon 값을 받아옵니다.
	    double lat = Double.parseDouble((String) request.getAttribute("lat"));
	    double lon = Double.parseDouble((String) request.getAttribute("lon"));
	    System.out.println(lat);

	    CustomerDTO dto = new CustomerDTO(cust_id, cust_pw, cust_nick, cust_email, cust_gender, cust_birthdate,
	            cust_addr, cust_phone, lat, lon);
	    CustomerDAO dao = new CustomerDAO();

	    System.out.println("있니?" + cust_id);

	    int result = dao.join(dto);

	    if (result == 1) {
	        // 회원가입 성공! -> 회원가입한 email 값을 가지고 페이지 이동
	        request.setAttribute("cust_id", cust_id);

	        RequestDispatcher rd = request.getRequestDispatcher("LoginJoin.html");
	        rd.forward(request, response);
	    } else {
	        // 회원가입 실패!
	        response.sendRedirect("LoginJoin.jsp");
	    }
	}
}