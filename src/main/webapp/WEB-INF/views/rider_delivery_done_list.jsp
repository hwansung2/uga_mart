<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<link href="resources/css/rider.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<%@ include file= "rider_header.jsp" %>
	<div id="rider_main">
		<%@ include file="rider_main_bar.jsp" %>
		
		<div id="rider_section">
			<h2>배달내역</h2>
			<div style="margin-top:20px;"></div>
			<div class="rider_delivery_list">
				<div class="rider_delivery_area">
					<div class="rider_delivery_order_number">주문번호 114455</div>	
					<div class="rider_delivery_order_date">21-08-11</div>	
					<div class="rider_delivery_list_store">배러댄 와플</div>	
				</div>	
				<div class="rider_delivery_area_side">배달완료</div>
			</div>
		</div>
	</div>
	<%@ include file= "rider_footer.jsp" %>
</body>
</html>