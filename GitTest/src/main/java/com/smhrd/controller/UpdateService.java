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

@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
        // 요청 파라미터
        String cust_nick = request.getParameter("cust_nick");

        // 세션에서 사용자 정보 가져오기
        HttpSession session = request.getSession();
        CustomerDTO info = (CustomerDTO) session.getAttribute("info");

        if (info == null) {
            response.sendRedirect("LoginJoin.html");
            return;
        }

        String cust_id = info.getCust_id(); // cust_id 가져옴

        // DTO 객체 생성 및 값 설정
        CustomerDTO dto = new CustomerDTO();
        dto.setCust_id(cust_id); // cust_id 설정
        dto.setCust_nick(cust_nick); // 새로운 닉네임 설정

        // DAO를 통해 데이터베이스 업데이트
        CustomerDAO dao = new CustomerDAO();
        int row = dao.update(dto); // 닉네임 업데이트 메서드 호출
        if (row > 0) {
            // 업데이트 성공 시 세션 정보 업데이트
            info.setCust_nick(cust_nick); // 닉네임 업데이트
            session.setAttribute("info", info);
        }

        response.sendRedirect("Mypage.jsp");
    }
}
