<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>위도경도계산기</title>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> <!-- 카카오 주소 검색 API -->
</head>
<body>

<form action="KakaoService2" method="post">
    <!-- 주소 검색 버튼과 주소 입력 -->
    <label for="cust_addr">주소:</label>
    <input type="text" id="cust_addr" name="cust_addr" readonly placeholder="주소검색 버튼을 눌러 주소입력" required>
    <button type="button" onclick="searchAddress()">주소 검색</button>
    <br><br>
    <input type="submit" value="위도 경도">
</form>

<!-- 카카오 주소 검색 API 스크립트 -->
<script>
function searchAddress() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 선택된 주소를 가져옵니다.
            var fullAddress = data.address; // 최종 주소 변수
            var extraAddress = ''; // 참고항목 변수를 선언합니다.

            // 법정동명이 있을 경우 추가합니다.
            if(data.addressType === 'R'){
                if(data.bname !== ''){
                    extraAddress += data.bname;
                }
                if(data.buildingName !== ''){
                    extraAddress += (extraAddress !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                fullAddress += (extraAddress !== '' ? ' ('+ extraAddress +')' : '');
            }

            // 주소를 해당 인풋 필드에 넣습니다.
            document.getElementById("cust_addr").value = fullAddress;
        }
    }).open();
}
</script>

</body>
</html>
