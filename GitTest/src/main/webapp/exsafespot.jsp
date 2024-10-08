<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>SafeSpot 찾기</title>
    <style>
.dot {overflow:hidden;float:left;width:12px;height:12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/mini_circle.png');}    
.dotOverlay {position:relative;bottom:10px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;font-size:12px;padding:5px;background:#fff;}
.dotOverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}    
.number {font-weight:bold;color:#ee6152;}
.dotOverlay:after {content:'';position:absolute;margin-left:-6px;left:50%;bottom:-8px;width:11px;height:8px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white_small.png')}
.distanceInfo {position:relative;top:5px;left:5px;list-style:none;margin:0;}
.distanceInfo .label {display:inline-block;width:50px;}
.distanceInfo:after {content:none;}
    </style>
</head>
<body>

<div id="map" style="width:100%;height:930px;"></div>  

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=289b7971840bca87f7aa75f2ddc1f413"></script>
<script>
// 지도 초기 설정
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(${info.lat}, ${info.lon}), 
        level: 1 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다


// 마커를 표시할 위치입니다 
var position =  new kakao.maps.LatLng(${info.lat}, ${info.lon});

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
  position: position,
  clickable: true // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
});


var imageSrc = '/map/safeiconmaker.png', // 마커이미지의 주소입니다    
    imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
    
var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
	
var positions = [  // 마커의 위치
	<c:forEach var="place" items="${safePlaces}" varStatus="status">
    	new kakao.maps.LatLng(${place.lat}, ${place.lon})<c:if test="${!status.last}">,</c:if>
	</c:forEach>
    ];

var placeNames = [  // 장소 이름 배열
    <c:forEach var="place" items="${safePlaces}" varStatus="status">
        "${place.sp_name}"<c:if test="${!status.last}">,</c:if>
    </c:forEach>
];


for (var i = 0, len = positions.length; i < len; i++) {
    // 마커를 생성하고 지도위에 표시합니다
    addMarker(positions[i],placeNames[i]);
}
	
function addMarker(position, place) {
	
    var marker = new kakao.maps.Marker({
        position: position,
        image: markerImage
    });
    marker.setMap(map);
    var latitude = position.getLat();  // 위도를 가져옵니다.

 	var longitude = position.getLng(); // 경도를 가져옵니다

    kakao.maps.event.addListener(marker, 'click', function() {
    	calculateDistance(latitude, longitude, place);  
    });
    
}
	
marker.setMap(map);

var clickLine; // 그려진 선 객체입니다
var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이입니다

function calculateDistance(lat2, lon2, place) {
    var lat1 = ${info.lat}
    var lon1 = ${info.lon}

    if (isNaN(lat1) || isNaN(lon1) || isNaN(lat2) || isNaN(lon2)) {
        document.getElementById('result').innerText = "올바른 숫자를 입력해주세요.";
        return;
    }

    // 기존 선과 오버레이를 제거
    deleteClickLine();
    deleteDistanceOverlay();

    var pos1 = new kakao.maps.LatLng(lat1, lon1);
    var pos2 = new kakao.maps.LatLng(lat2, lon2);

    // 선을 그리기 위해 좌표 배열을 생성합니다
    var linePath = [pos1, pos2];

    // 선을 생성하고 지도에 표시합니다
    clickLine = new kakao.maps.Polyline({
        map: map, // 선을 표시할 지도입니다 
        path: linePath, // 선을 구성하는 좌표 배열입니다
        strokeWeight: 3, // 선의 두께입니다 
        strokeColor: '#db4040', // 선의 색깔입니다
        strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값
        strokeStyle: 'solid' // 선의 스타일입니다
    });

    // 두 지점 간의 거리를 계산합니다
    var distance = Math.round(clickLine.getLength());
		
    // 거리 정보를 지도에 표시합니다
    showDistance(distance, pos2, place);

}

// 클릭으로 그려진 선을 지도에서 제거하는 함수입니다
function deleteClickLine() {
    if (clickLine) {
        clickLine.setMap(null);    
        clickLine = null;        
    }
}

// 거리 정보를 지도에 표시하는 함수입니다
function showDistance(distance, position, place) {
    var content = getTimeHTML(distance, place);
    distanceOverlay = new kakao.maps.CustomOverlay({
        map: map,
        content: content,
        position: position,
        xAnchor: 0,
        yAnchor: 0,
        zIndex: 3  
    });
}

// 거리 정보를 삭제하는 함수입니다
function deleteDistanceOverlay() {
    if (distanceOverlay) {
        distanceOverlay.setMap(null);
        distanceOverlay = null;
    }
}

function getTimeHTML(distance, place) {

    // 도보의 시속은 평균 4km/h 이고 도보의 분속은 67m/min입니다
    var walkkTime = distance / 67 | 0;
    var walkHour = '', walkMin = '';

    // 계산한 도보 시간이 60분 보다 크면 시간으로 표시합니다
    if (walkkTime > 60) {
        walkHour = '<span class="number">' + Math.floor(walkkTime / 60) + '</span>시간 '
    }
    walkMin = '<span class="number">' + walkkTime % 60 + '</span>분'

    // 자전거의 평균 시속은 16km/h 이고 이것을 기준으로 자전거의 분속은 267m/min입니다
    var bycicleTime = distance / 227 | 0;
    var bycicleHour = '', bycicleMin = '';

    // 계산한 자전거 시간이 60분 보다 크면 시간으로 표출합니다
    if (bycicleTime > 60) {
        bycicleHour = '<span class="number">' + Math.floor(bycicleTime / 60) + '</span>시간 '
    }
    bycicleMin = '<span class="number">' + bycicleTime % 60 + '</span>분'

    // 거리와 도보 시간, 자전거 시간을 가지고 HTML Content를 만들어 리턴합니다
    var content = '<ul class="dotOverlay distanceInfo">';
    content += '    <li>';
    content += '        <span class="number">' + place + '</span>';
    content += '    </li>';
    content += '    <li>';
    content += '        <span class="label">총거리</span><span class="number">' + distance + '</span>m';
    content += '    </li>';
    content += '    <li>';
    content += '        <span class="label">도보</span>' + walkHour + walkMin;
    content += '    </li>';
    content += '    <li>';
    content += '        <span class="label">자전거</span>' + bycicleHour + bycicleMin;
    content += '    </li>';
    content += '</ul>'

    return content;
}

</script>

</body>
</html>
