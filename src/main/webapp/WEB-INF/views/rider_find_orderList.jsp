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
			<h2>주문현황</h2>
			<div style="margin-top:20px;"></div>
			
			<c:if test="${not empty list}">
				<c:forEach var="m" items="${list}" varStatus="status">
					<div class="customer_orderList">
						<div class="customer_orderList_text">	
							<div class="customer_orderList_number">주문번호 ${m.order_number}</div>
							<span class="customer_orderDate">${m.order_date}</span>&nbsp;<span class="distance_from">1.8km</span>
							<div class="customer_order_store_location">${m.required_address}</div>
							<div class="customer_order_store">${m.ceo_store_name}</div>
							<div class="customer_order_store">${m.product_k_name} / ${m.product_amount}개</div>
						</div>
						<div class="customer_orderList_text_button">
							<button class="rider_takeover">접수하기</button>
						</div>
					</div>
				</c:forEach>
			</c:if>
			
			
		</div>
	</div>
	<%@ include file= "rider_footer.jsp" %>
</body>
</html>