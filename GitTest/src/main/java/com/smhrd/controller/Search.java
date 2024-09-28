package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.ProductDTO;

@WebServlet("/Search")
public class Search extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchQuery = request.getParameter("search");
        
        // 예시: BoardService를 통해 데이터베이스에서 검색
        BoardService boardService = new BoardService();
        List<ProductDTO> filteredProductList = boardService.searchProductsByName(searchQuery);

        // 검색 결과를 JSP에 전달
        request.setAttribute("filteredProductList", filteredProductList);
        request.setAttribute("searchQuery", searchQuery);
        
        // 검색 결과를 표시할 JSP 페이지로 포워딩
        RequestDispatcher dispatcher = request.getRequestDispatcher("main.jsp");
        dispatcher.forward(request, response);
    }
}
