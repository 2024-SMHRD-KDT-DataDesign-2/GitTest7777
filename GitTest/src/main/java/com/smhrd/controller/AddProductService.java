package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.smhrd.model.ProductDAO;
import com.smhrd.model.ProductDTO;
import com.smhrd.model.CustomerDTO;

@WebServlet("/AddProductService")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10MB
        maxFileSize = 1024 * 1024 * 50, // 50MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
public class AddProductService extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 요청 인코딩
        request.setCharacterEncoding("UTF-8");

        // 세션에서 사용자 정보 가져오기
        HttpSession session = request.getSession();
        CustomerDTO info = (CustomerDTO) session.getAttribute("info");

        if (info != null) {
            String CUST_ID = info.getCust_id(); // 판매자 ID
            System.out.println("로그인한 사용자 ID: " + CUST_ID);

            // 폼 데이터 받기
            String prodName = request.getParameter("product-name");
            String prodPrice = request.getParameter("price");
            String prodDesc = request.getParameter("description");
            String prodStatus = request.getParameter("condition");
            String prodCategory = request.getParameter("transaction");
            
            // --- 폼 데이터가 잘 받아와졌는지 확인하는 코드 ---
            System.out.println("폼 데이터 확인:");
            System.out.println("상품명: " + prodName);
            System.out.println("가격: " + prodPrice);
            System.out.println("상품 설명: " + prodDesc);
            System.out.println("상품 상태: " + prodStatus);
            System.out.println("거래 방법: " + prodCategory);
           
            // 이미지 파일 경로 (업로드된 파일 처리 부분 생략)
            String[] imagePaths = {"image1.jpg", "image2.jpg", "image3.jpg"}; // 실제 업로드 경로로 변경해야 함

            // ProductDTO 객체 생성
            ProductDTO product = new ProductDTO();
            product.setProd_name(prodName);
            product.setProd_price(Integer.parseInt(prodPrice));
            product.setProd_desc(prodDesc);
            product.setProd_status(prodStatus);
            product.setProd_category(prodCategory);
            product.setProd_img1(imagePaths[0]);
            product.setProd_img2(imagePaths[1]);
            product.setProd_img3(imagePaths[2]);
            product.setCust_id(CUST_ID);

            // DAO를 통해 데이터베이스에 삽입
            ProductDAO dao = new ProductDAO();
            int result = dao.insertProduct(product);

            if (result > 0) {
                System.out.println("상품 등록 성공");
            } else {
                System.out.println("상품 등록 실패");
            }
        } else {
            System.out.println("로그인 정보가 없습니다.");
        }
        response.sendRedirect("main.jsp");
    }
}
