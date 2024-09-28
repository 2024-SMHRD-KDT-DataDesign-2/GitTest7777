<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 50%;
            margin: auto;
        }
        .header {
            margin-top: 20px;
            text-align: center;
            font-size: 24px;
        }
        .section {
            margin: 20px 0;
        }
        .label {
            font-weight: bold;
        }
        .empty {
            color: gray;
        }
        .products {
            border: 1px solid #ddd;
            padding: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <p><b>김김히오</b></p>
        </div>

        <!-- Profile Section -->
        <div class="section profile">
            <div class="label">Profile:</div>
            <p>○ X ○</p>
        </div>

        <!-- Products Section -->
        <div class="section products">
            <div class="label">상품:</div>
            <p class="empty">등록된 상품이 없습니다.</p>
        </div>
    </div>
</body>
</html>
