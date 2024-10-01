package com.smhrd.controller;

import java.io.IOException;
import java.lang.ProcessHandle.Info;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.CustomerDTO;
import com.smhrd.model.ProductDAO;
import com.smhrd.model.ProductDTO;

@WebServlet(name = "Mypage.do", urlPatterns = { "/Mypage.do" })
public class Mypage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Mypage() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // DAO를 사용하여 DB에서 상품 목록을 가져옴
        ProductDAO productDAO = new ProductDAO();
        HttpSession session = request.getSession();
        
        CustomerDTO info = (CustomerDTO)session.getAttribute("info");
        System.out.println(info);
        List<ProductDTO> productList = productDAO.getIdProducts(info.getCust_id());
        

        // 상품 목록을 request 객체에 저장
        request.setAttribute("productList", productList);

        // JSP 페이지로 포워딩
        request.getRequestDispatcher("Mypage.jsp").forward(request, response);
	}



}
