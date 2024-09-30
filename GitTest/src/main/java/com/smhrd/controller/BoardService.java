package com.smhrd.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import com.smhrd.model.ProductDAO;
import com.smhrd.model.ProductDTO;

public class BoardService {

	public List<ProductDTO> searchProductsByName(String searchQuery) {
		// DAO를 사용하여 DB에서 상품 목록을 가져옴
		ProductDAO productDAO = new ProductDAO();
		List<ProductDTO> allProducts = productDAO.getAllProducts(); // 모든 제품 목록 가져오기

		List<ProductDTO> filteredProductList = new ArrayList<>();

		// 검색어가 제품 이름에 포함된 경우 필터링
		for (ProductDTO product : allProducts) {
			if (product.getProd_name().toLowerCase().contains(searchQuery.toLowerCase())) {
				filteredProductList.add(product);
			}
		}

		return filteredProductList; // 필터링된 리스트 반환
	}

}
