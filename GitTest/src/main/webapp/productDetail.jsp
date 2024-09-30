<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>상품 상세 페이지</title>
</head>
<body>
<<<<<<< HEAD
    <c:choose>
        <c:when test="${product != null}">
            <div class="product-detail">
                <h3>상품명: ${product.prod_name}</h3>
                <img src="../${product.prod_img1}" alt="${product.prod_name}" width="300" height="300">
            	<img src="../${product.prod_img2}" alt="${product.prod_name}" width="300" height="300">
            	<img src="../${product.prod_img3}" alt="${product.prod_name}" width="300" height="300">
            	<p>설명: ${product.prod_desc}</p>
            	<p>${product.cust_addr}</p>
                <p>가격: ${product.prod_price}원</p>
            	<p>상품 상태: ${product.prod_status}</p>
            	<p>거래 방식: ${product.prod_category}</p>
=======
    <h2>상품 상세 정보</h2>

    <c:choose>
        <c:when test="${product != null}">
            <div class="product-detail">
                <h3>상품명: ${product.prod_name}</h3>
                <img src="../${product.prod_img1}" alt="${product.prod_name}" width="300" height="300">
            	<img src="../${product.prod_img2}" alt="${product.prod_name}" width="300" height="300">
            	<img src="../${product.prod_img3}" alt="${product.prod_name}" width="300" height="300">
            	<p>설명: ${product.prod_desc}</p>
                <p>가격: ${product.prod_price}원</p>
            	<p>상품 상태: ${product.prod_status}</p>
            	<p>거래 방식: ${product.prod_category}</p>
            	
>>>>>>> branch 'master' of https://github.com/2024-SMHRD-KDT-DataDesign-2/GitTest7777.git
            </div>
        </c:when>
        <c:otherwise>
        </c:otherwise>
    </c:choose>

</body>
</html>
