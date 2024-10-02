package com.smhrd.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.ProductDAO;

@WebServlet("/deleteProduct")
public class DeleteProductServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. 인코딩
		request.setCharacterEncoding("UTF-8");

		// 2. 데이터 꺼내오기
		int prodIdx = Integer.parseInt(request.getParameter("prod_idx")); // idx 값을 가져옵니다.
		System.out.println(prodIdx);
		// 3. 데이터 처리하기 -> DAO -> DB
		ProductDAO dao = new ProductDAO();

		// 게시글 삭제
		int result = dao.deletePost(prodIdx); // idx를 이용하여 삭제 메서드 호출

		// 4. 결과 출력하기
		if (result > 0) {
			System.out.println("게시글 삭제 성공!");
		} else {
			System.out.println("게시글 삭제 실패!");
		}

		// 게시글 목록 페이지로 리디렉션
		response.sendRedirect("Mypage.do");
	}

}
