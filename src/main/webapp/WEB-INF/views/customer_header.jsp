<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" pageEncoding="utf-8" %>
<c:choose>
	<c:when test="${msg!=null}" >
		<script>
			alert('${msg}');
		</script>
	</c:when>
</c:choose>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/customer.css" type="text/css">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=881686256c60c55dc4f7b680136d7235&libraries=services"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div
	    mapOption = {
	        center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
	        level: 5 // 지도의 확대 레벨
	 };
	//지도를 미리 생성
		var map = new daum.maps.Map(mapContainer, mapOption);
		//주소-좌표 변환 객체를 생성
		var geocoder = new daum.maps.services.Geocoder();
		//마커를 미리 생성
		var marker = new daum.maps.Marker({
		    position: new daum.maps.LatLng(37.537187, 127.005476),
		    map: map
	});
function sample5_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            var addr = data.address; // 최종 주소 변수

            // 주소 정보를 해당 필드에 넣는다.
            document.getElementById("header_address").value = addr;
            // 주소로 상세 정보를 검색
            geocoder.addressSearch(data.address, function(results, status) {
                // 정상적으로 검색이 완료됐으면
                if (status === daum.maps.services.Status.OK) {

                    var result = results[0]; //첫번째 결과의 값을 활용

                    // 해당 주소에 대한 좌표를 받아서
                    var coords = new daum.maps.LatLng(result.y, result.x);
                    // 지도를 보여준다.
                    mapContainer.style.display = "block";
                    map.relayout();
                    // 지도 중심을 변경한다.
                    map.setCenter(coords);
                    // 마커를 결과값으로 받은 위치로 옮긴다.
                    marker.setPosition(coords)
                }
            });
        }
    }).open();
}
</script>

</head>
<body>
	<div class="all">
		<div class="h1">
			<div class="header_top">
				<ul class="htext1">
					<li class="mart_user"><a href="http://localhost:9999/ugaMart/">우가마트</a></li>
					<li class="mart_rider"><a href="riderLogin">우가라이더 광장</a></li>
					<li class="mart_owner"><a href="ceoLogin">우가사장님 광장</a></li>
				</ul>	
				<ul class="htext2">
					<c:choose>
						<c:when test="${login_id==null}">
							<li class="mart_regi"><a href="customerRegisterPage">회원가입</a></li>
							<li class="mart_login"><a href="customerLogin">로그인</a></li>
						</c:when>
						<c:otherwise>
							${login_id}님 환영합니다 <a href="customerLogout"><button class="logout_btn">로그아웃</button></a>
						</c:otherwise>   
					</c:choose>
				</ul>
		</div>
		</div>
		<div class="h1">
			<div class="nav">
				<ul class="nav_img" style="width:180px;">
					<li class="all_category"><img class="nav_menu" src="resources/img/Allshares/menu.png"/></li>
					<li class="category_txt">전체 카테고리
						<ul class="submenu">
							<li><a href="productByCategory?category=1">과일/채소/샐러드</a></li>
							<li><a href="productByCategory?category=2">요리/반찬</a></li>
							<li><a href="productByCategory?category=3">빵/시리얼/잼</a></li>
							<li><a href="productByCategory?category=4">생수/커피/음료</a></li>
							<li><a href="productByCategory?category=5">정육/수산/계란</a></li>
							<li><a href="productByCategory?category=6">밀키트</a></li>
							<li><a href="productByCategory?category=7">우유/유제품</a></li>
							<li><a href="productByCategory?category=8">헤어/바디/세안</a></li>
							<li><a href="productByCategory?category=9">화장지/생리대</a></li>
							<li><a href="productByCategory?category=10">세제/세탁</a></li>
						</ul>
					</li>	
				</ul>
				<div class="bmimg"><a href="customerMainPage"><img src="resources/img/Allshares/mainlogo.png"/></a></div>
				<div class='user_addr' style="width:190px;">
					<input type="text" id="header_address" placeholder="주소" onclick="sample5_execDaumPostcode()" /><br>
				</div>
				
				<ul class="nav_box" style="padding:0;">
					<li class="box"><img src="resources/img/Allshares/mystore.png" style="margin-left:11px;"/><br/><a>장바구니</a></li>
					<li class="box"><img src="resources/img/Allshares/search.png" style="margin-left:11px;"/><br/><a>상품검색</a></li>
					<li class="box" style="margin-right:11px;"><img src="resources/img/Allshares/shoppingbasket.png" style="margin-left:11px;"/><br/><a href="mypage">나의 마트</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>