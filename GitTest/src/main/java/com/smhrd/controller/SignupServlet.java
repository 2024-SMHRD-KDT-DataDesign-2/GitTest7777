package com.smhrd.controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.smhrd.model.CustomerDAO;
import com.smhrd.model.CustomerDTO;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {

    @Resource(name = "jdbc/mydb")
    private DataSource dataSource;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 입력 폼에서 값 받아오기
        String custId = request.getParameter("custId");
        String custPw = request.getParameter("custPw");
        String custNick = request.getParameter("custNick");
        String custEmail = request.getParameter("custEmail");
        String custGender = request.getParameter("custGender");
        String custBirthdate = request.getParameter("custBirthdate");
        String custAddr = request.getParameter("custAddr");
        String custPhone = request.getParameter("custPhone");
        String joinedAt = java.time.LocalDateTime.now().toString(); // 가입 시간
        double lat = Double.parseDouble(request.getParameter("lat"));
        double lon = Double.parseDouble(request.getParameter("lon"));

        // DTO 생성
        CustomerDTO customer = new CustomerDTO(custId, custPw, custNick, custEmail, custGender,
                custBirthdate, custAddr, custPhone, joinedAt, lat, lon);

        // DAO를 사용해 데이터베이스에 삽입
        CustomerDAO dao = new CustomerDAO(dataSource);
        try {
            dao.insertCustomer(customer);
            response.sendRedirect("signup_success.jsp"); // 성공 시 리다이렉트
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("signup_error.jsp"); // 실패 시 리다이렉트
        }
    }
}
