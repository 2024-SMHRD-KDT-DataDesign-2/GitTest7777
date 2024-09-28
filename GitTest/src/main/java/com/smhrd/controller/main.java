package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.ProductDAO;
import com.smhrd.model.ProductDTO;

@WebServlet(name = "main.do", urlPatterns = { "/main.do" })
public class main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public main() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // DAO를 사용하여 DB에서 상품 목록을 가져옴
        ProductDAO productDAO = new ProductDAO();
        List<ProductDTO> productList = productDAO.getAllProducts();

        // 상품 목록을 request 객체에 저장
        request.setAttribute("productList", productList);

        // JSP 페이지로 포워딩
        request.getRequestDispatcher("main.jsp").forward(request, response);
	}



}
