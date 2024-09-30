package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.smhrd.model.ProductDAO;
import com.smhrd.model.ProductDTO;

@WebServlet(name = "products/*", urlPatterns = { "/products/*" })
public class product extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public product() {
        super();
    }


	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {

	        // URL에서 {idx} 값 추출
	        String pathInfo = request.getPathInfo();  // "/{idx}" 값이 들어옴
	        if (pathInfo != null && pathInfo.length() > 1) {
	            String idxStr = pathInfo.substring(1);  // 앞의 '/'를 제거하여 idx 값만 추출
	            try {
	                int prodIdx = Integer.parseInt(idxStr);  // {idx} 값을 정수로 변환

	                // DAO를 사용하여 해당 상품 정보를 가져옴
	                ProductDAO productDAO = new ProductDAO();
	                ProductDTO product = productDAO.selectProductById(prodIdx);

	                if (product != null) {
	                    // 상품 정보를 request 객체에 저장
	                    request.setAttribute("product", product);

	                    // JSP 페이지로 포워딩
	                    request.getRequestDispatcher("/productDetail.jsp").forward(request, response);
	                } else {
	                    // 상품이 없으면 404 에러 처리
	                    response.sendError(HttpServletResponse.SC_NOT_FOUND, "Product not found");
	                }

	            } catch (NumberFormatException e) {
	                // idx가 정수로 변환되지 않으면 400 에러 처리
	                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid product ID");
	            }
	        } else {
	            // 경로가 유효하지 않으면 400 에러 처리
	            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid product URL");
	        }
	    }
        
<<<<<<< HEAD
	}
=======
	}
>>>>>>> branch 'master' of https://github.com/2024-SMHRD-KDT-DataDesign-2/GitTest7777.git
