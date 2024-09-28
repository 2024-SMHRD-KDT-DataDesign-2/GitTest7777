package com.smhrd.controller;

import java.io.File;
import java.io.IOException;
import java.util.Collection;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
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

            // 파일 업로드 처리
            //String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
            String uploadPath = "C:\\Users\\smhrd\\git\\GitTest7777\\GitTest\\src\\main\\webapp\\uploads";

            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) uploadDir.mkdir(); // 업로드 폴더가 없으면 생성

            // 업로드된 파일 처리
            Collection<Part> parts = request.getParts();
            String[] imagePaths = new String[3]; // 최대 3개의 이미지 저장

            int i = 0;
            for (Part part : parts) {
                if (part.getName().equals("product-images") && part.getSize() > 0 && i < 3) {
                    // 파일 이름 추출
                    String fileName = extractFileName(part);
                    String filePath = uploadPath + File.separator + fileName;
                    part.write(filePath); // 파일을 지정한 경로에 저장

                    // 저장된 파일 경로를 imagePaths 배열에 저장
                    imagePaths[i] = "uploads/" + fileName; // 웹 경로로 저장
                    i++;
                }
            }

            // ProductDTO 객체 생성
            ProductDTO product = new ProductDTO();
            product.setProd_name(prodName);
            product.setProd_price(Integer.parseInt(prodPrice));
            product.setProd_desc(prodDesc);
            product.setProd_status(prodStatus);
            product.setProd_category(prodCategory);
            product.setProd_img1(imagePaths[0] != null ? imagePaths[0] : "");
            product.setProd_img2(imagePaths[1] != null ? imagePaths[1] : "");
            product.setProd_img3(imagePaths[2] != null ? imagePaths[2] : "");
            product.setCust_id(CUST_ID);

            // DAO를 통해 데이터베이스에 삽입
            ProductDAO dao = new ProductDAO();
            int result = dao.insertProduct(product);

            if (result > 0) {
                System.out.println("상품 등록 성공");

                // 이미지 파일이 잘 저장되었는지 확인하는 코드
                for (String imagePath : imagePaths) {
                    if (imagePath != null && !imagePath.isEmpty()) {
                        File imageFile = new File(getServletContext().getRealPath("") + File.separator + imagePath);
                        if (imageFile.exists()) {
                            System.out.println("이미지 파일이 성공적으로 저장되었습니다: " + imageFile.getAbsolutePath());
                        } else {
                            System.out.println("이미지 파일이 저장되지 않았습니다: " + imageFile.getAbsolutePath());
                        }
                    }
                }

            } else {
                System.out.println("상품 등록 실패");
            }
        } else {
            System.out.println("로그인 정보가 없습니다.");
        }
        response.sendRedirect("/main.do");
    }

    // 파일 이름 추출 메서드
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
