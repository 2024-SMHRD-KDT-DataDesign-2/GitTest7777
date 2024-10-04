<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<% 
    String latitude = (String) request.getAttribute("lat");
    String longitude = (String) request.getAttribute("lon");
    String errorMessage = (String) request.getAttribute("errorMessage");
%>

<h1>주소 검색 결과</h1>

<% if (errorMessage != null) { %>
    <p><strong>Error:</strong> <%= errorMessage %></p>
<% } else { %>
    <p><strong>위도:</strong> <%= latitude %></p>
    <p><strong>경도:</strong> <%= longitude %></p>
<% } %>

</body>
</html>
