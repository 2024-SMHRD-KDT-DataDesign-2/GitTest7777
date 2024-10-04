<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품 상세 페이지</title>

<!-- Slick slider CSS -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" />

<style>
/* 슬라이더 이미지 스타일 */
.slick-slide img {
	display: block;
	width: 100%; /* 반응형으로 화면에 맞춤 */
	max-width: 500px; /* 최대 너비를 500px로 제한 */
	height: auto;
	margin: 0 auto;
	border-radius: 10px; /* 이미지 끝을 둥글게 */
}

/* 슬라이더 전체 영역 스타일 */
.slider {
	width: 100%;
	margin: 0 auto;
	max-width: 500px;
}

/* 프로필과 설명 사이의 간격 조정 */
#article-profile, #article-description {
	margin-top: 20px;
}

/* 화살표 버튼 스타일 */
.slick-prev, .slick-next {
	background-color: #ccc;
	border-radius: 50%;
	width: 40px;
	height: 40px;
	line-height: 40px;
	text-align: center;
}

.slick-prev {
	left: 10px;
}

.slick-next {
	right: 10px;
}

/* 프로필 컨테이너 */
.profile-container {
	display: flex;
	justify-content: flex-start; /* 왼쪽 정렬 */
	align-items: center;
	text-align: left; /* 텍스트도 왼쪽 정렬 */
	max-width: 500px; /* 프로필이 표시되는 영역의 최대 너비를 슬라이더와 동일하게 설정 */
	margin: 0 auto; /* 가운데 정렬 유지 */
}

/* 프로필 세부 스타일 */
#article-profile-left {
	display: flex;
	flex-direction: column;
	align-items: flex-start; /* 내부 요소들을 왼쪽 정렬 */
}

/* 상품 설명 왼쪽 정렬 */
#article-description {
	text-align: left; /* 텍스트를 왼쪽 정렬 */
	max-width: 500px; /* 슬라이더와 동일한 최대 너비로 설정 */
	margin: 0 auto; /* 가운데 정렬 유지 */
}

/* 개별 텍스트 왼쪽 정렬 */
#article-title, #article-price, #article-detail {
	text-align: left; /* 각각의 요소도 왼쪽 정렬 */
}

/* 구분선 스타일 */
.custom-divider {
	width: 26%; /* 구분선 길이 */
	border: none;
	border-top: 1px solid #ccc;
	margin: 20px auto;
}

/* 글자 크기 및 폰트 스타일 */
#article-title {
	font-size: 24px;
	font-weight: bold;
	margin-bottom: 10px;
}

#article-price {
	font-size: 20px;
	font-weight: bold;
	color: #333;
}

/* 설명 부분의 너비 제한 및 줄바꿈 처리 */
#article-detail {
	max-width: 500px; /* 구분선과 일치하는 너비로 설정 */
	word-wrap: break-word; /* 긴 단어도 자동으로 줄바꿈 */
	margin: 0 auto;
	text-align: left;
}

#article-detail p {
	font-size: 16px;
	line-height: 1.5;
	color: #666;
}

#nickname {
	font-size: 18px;
	font-weight: bold;
}

#region-name {
	font-size: 14px;
	color: gray;
}
</style>

</head>
<body>

	<section id="article-images">
		<div id="image-slider">
			<div class="slider-wrap">
				<div class="slider">
					<!-- 첫 번째 이미지 -->
					<c:if test="${not empty product.prod_img1}">
						<div>
							<a href="#"> <img class="portrait"
								alt="${product.prod_name} 1"
								src="${pageContext.request.contextPath}/${product.prod_img1}">
							</a>
						</div>
					</c:if>

					<!-- 두 번째 이미지 -->
					<c:if test="${not empty product.prod_img2}">
						<div>
							<a href="#"> <img class="portrait"
								alt="${product.prod_name} 2"
								src="${pageContext.request.contextPath}/${product.prod_img2}">
							</a>
						</div>
					</c:if>

					<!-- 세 번째 이미지 -->
					<c:if test="${not empty product.prod_img3}">
						<div>
							<a href="#"> <img class="portrait"
								alt="${product.prod_name} 3"
								src="${pageContext.request.contextPath}/${product.prod_img3}">
							</a>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</section>

	<hr class="custom-divider">

	<section id="article-profile">
		<div class="profile-container">
			<div id="article-profile-left">
				<div>
					<div id="nickname">${product.cust_nick}</div>
					<div id="region-name">${product.cust_addr}</div>
				</div>
			</div>
		</div>
	</section>

	<hr class="custom-divider">

	<section id="article-description">
		<h1 id="article-title">${product.prod_name}</h1>
		<p id="article-price">${product.prod_price}원</p>

		<div id="article-detail">
			<p>${product.prod_desc}</p>
			<a href="ChattingRoomService">채팅하기</a>
		</div>
	</section>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('.slider').slick({
				infinite : true,
				slidesToShow : 1,
				slidesToScroll : 1,
				dots : true,
				arrows : true,
				autoplay : true,
				autoplaySpeed : 3000,
				prevArrow : '.slick-prev',
				nextArrow : '.slick-next',
			});
		});
	</script>

</body>
</html>
