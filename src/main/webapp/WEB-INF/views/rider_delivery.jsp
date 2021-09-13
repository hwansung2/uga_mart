<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=l7xxe5493441e68a4bc3a81c0363e6411042"></script>
<link href="resources/css/rider.css" rel="stylesheet" type="text/css" />
<script>
function initTmap(){
	// Tmap.map을 이용하여, 지도가 들어갈 div, 넓이, 높이를 설정합니다.
	map = new Tmapv2.Map("map_div", {
		center : new Tmapv2.LatLng(37.566481622437934, 126.98502302169841), // 지도 초기 좌표
		width : "550px", // map의 width 설정
		height : "250px" // map의 height 설정	
	});
	
	map.setCenter(new Tmapv2.LatLng(37.55676159947993,126.94734232774672));
	map.setZoom(15);
};

//현위치 찾는 함수 - 이걸로 marker
function getLocation() {
    navigator.geolocation.getCurrentPosition(function(position) {
      	var latitude = position.coords.latitude;
      	var longitude = position.coords.longitude;

		alert(latitude);
		alert(longitude);
	});
}

</script>
</head>
<body onload="initTmap()">
	<%@ include file= "rider_header.jsp" %>
	<div id="rider_main">
		<%@ include file="rider_main_bar.jsp" %>
		<div id="rider_section">
			<h2>배달현황</h2>
			<div style="margin-top:20px;"></div>
			<div class="rider_delivery">
				<div class="rider_delivery_text">	
					<div class="rider_delivery_number">주문번호 123131</div>
					<span class="rider_deliveryDate">21-08-22</span>&nbsp;<span class="rider_delivery_distance_from">1.8km</span>
					<div class="rider_delivery_store_location">서울특별시 염리동45 마포아트센터 3층</div>
					<div class="rider_delivery_store">배러덴와플</div>
				</div>
				<div class="rider_delivery_text_button">
					<button class="rider_pick_up">픽업완료</button>
					<button class="rider_delivery_done">배달완료</button>
				</div>
			</div>
			
			<div style="margin-top:20px;"></div>
			<!-- 지도 보여주기 -->
			<div id="map_div">
			
			</div>
		</div>
	</div>
	<%@ include file= "rider_footer.jsp" %>
</body>
</html>