package com.smhrd.model;

import lombok.Data;

@Data
public class ProductDTO {
    private int prod_idx;          // 상품 인덱스 (자동 증가)
    private String prod_name;      // 상품명
    private String prod_desc;      // 상품 설명
    private int prod_price;        // 가격
    private String prod_status;    // 상품 상태
    private String prod_category;  // 거래 방법 (직거래 or SafeSpot)
    private String prod_img1;      // 이미지 1 경로
    private String prod_img2;      // 이미지 2 경로
    private String prod_img3;      // 이미지 3 경로
    private String cust_id;        // 판매자 ID (세션에서 가져온 사용자 ID)
    private String created_at;     // 등록 일자 (SYSDATE로 처리)
}
