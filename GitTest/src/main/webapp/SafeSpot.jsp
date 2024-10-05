<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SafeSpot 찾기</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .header {
            position: relative;
            padding: 10px;
            background-color: #f0f0f0;
            display: flex;
            justify-content: flex-start;
            align-items: center;
        }

        .header h1 {
            cursor: pointer;
            margin-left: 10px;
            font-size: 24px;
        }

        .map-container {
            position: relative;
            width: 100%;
            height: 500px;
        }

        #map {
            width: 100%;
            height: 400px;
        }

        /* 토글바(슬라이드 메뉴) 스타일 */
        .sidebar {
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1001;
            top: 0;
            left: 0;
            background-color: #b0c4de;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
        }

        .sidebar a {
            padding: 10px 15px;
            text-decoration: none;
            font-size: 18px;
            color: black;
            display: block;
            transition: 0.3s;
            text-align: center;
            border-radius: 10px;
            margin: 10px;
            background-color: white;
        }

        .sidebar a:hover {
            background-color: #f1f1f1;
        }

        .sidebar .closebtn {
            position: absolute;
            top: 0;
            right: 10px;
            font-size: 24px; /* closebtn 크기 조정 */
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        .info-box {
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            background-color: white;
            padding: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            text-align: center;
            width: 90%;
        }

        .info-box h2 {
            margin-bottom: 10px;
        }

        .info-box p {
            color: #555;
        }

    </style>
</head>
<body>
    <div class="header">
        <h1 id="menuBtn">=</h1> <!-- `=` 버튼 -->
    </div>

    <div class="map-container">
        <div id="map"></div>
        <div class="info-box">
            <p>SafeSpot찾기</p>
        </div>
    </div>

   <!-- 토글바(슬라이드 메뉴) -->
<div id="mySidebar" class="sidebar">
    <a href="javascript:void(0)" class="closebtn" id="closeBtn">&times;</a> <!-- 닫기 버튼 -->
    <a href="https://www.example.com/restaurant-list">메뉴</a>
    <br>
    <hr style="border: 1px solid black; width: 80%; margin: 0 auto;"> <!-- 밑줄 추가 -->
    <a href="https://www.example.com/my-page">음식점 리스트</a>
    <a href="https://www.example.com/profile">마이 페이지</a>
    <a href="http://127.0.0.1:5500/%ED%86%A0%EC%8A%A4%ED%8A%B8/login.html?">로그아웃</a> <!-- 로그아웃 추가 -->
    
</div>

    <script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=289b7971840bca87f7aa75f2ddc1f413"></script> <!-- 카카오 지도 API -->

    <script>
        function initMap() {
            // 지도 초기화
            const map = new kakao.maps.Map(document.getElementById("map"), {
                center: new kakao.maps.LatLng(37.5665, 126.9780), // 서울 광화문 좌표 (예시)
                level: 3, // 줌 레벨
            });

            // 마커 추가
            const markers = [
                { position: new kakao.maps.LatLng(37.5665, 126.9780), title: "맛집1" },
                { position: new kakao.maps.LatLng(37.5655, 126.9770), title: "맛집2" },
                { position: new kakao.maps.LatLng(37.5645, 126.9760), title: "맛집3" },
            ];

            markers.forEach(markerInfo => {
                const marker = new kakao.maps.Marker({
                    position: markerInfo.position,
                    title: markerInfo.title
                });
                marker.setMap(map); // 지도에 마커 추가
            });
        }

        // 슬라이드 메뉴 열기 및 닫기
        document.getElementById("menuBtn").addEventListener("click", function() {
            document.getElementById("mySidebar").style.width = "250px"; // 사이드바 열기
        });

        document.getElementById("closeBtn").addEventListener("click", function() {
            document.getElementById("mySidebar").style.width = "0"; // 사이드바 닫기
        });

        // 지도 초기화 함수 호출
        initMap();
    </script>
</body>
</html>
