package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.ProductDAO;
import com.smhrd.model.ProductDTO;
import com.smhrd.model.SafePlaceDAO;
import com.smhrd.model.SafePlaceDTO;

@WebServlet(description = "SafeSpot", urlPatterns = { "/SafeSpot" })
public class SafeSpot extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SafeSpot() {
        super();
       
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	SafePlaceDAO dao = new SafePlaceDAO();
    	List<SafePlaceDTO> safePlaces = dao.selectAllSafePlaces();
    	
    	request.setAttribute("safePlaces", safePlaces);
 
        // JSP 페이지로 포워딩
        //request.getRequestDispatcher("SafeSpot.jsp").forward(request, response);
    	request.getRequestDispatcher("exsafespot.jsp").forward(request, response);
	}

}
