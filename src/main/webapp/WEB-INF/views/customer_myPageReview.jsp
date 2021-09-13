<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 후기</title>
<link rel="stylesheet" href="css/customer.css" type="text/css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<script>
	$(function(){
		$(".mypage-review-content2").click(function(){
			if($(this).siblings(".mypage-review-hidden").css("display") == "none"){
				$(this).siblings(".mypage-review-hidden").css("display","block");
			}
			else{
				$(this).siblings(".mypage-review-hidden").css("display","none");
			}
		});
		$('.revise').click(function(){
						
						
		});
		$('.delete').click(function(){
			
		});
	});
</script>
<body>
<%@ include file= "customer_header.jsp" %>
	<div class="mypage-container">
		<div class="mypage-container2">
			
			<%@ include file="customer_myPage_menuBar.jsp" %>
			<div class="mypage-main-content">
				<h3>상품 후기</h3>
				<c:choose>
					<c:when test="${!empty list}">
						<c:forEach var="list" items="${list}">
							<div class="mypage-review-content">
								<p>${list.review_date}</p>
								<div class="mypage-review-content2">
									<img src="resources/img/ceoProductPic/${list.ceo_number}_${list.product_number}_1.png" class="mypage-review-img">
									<span>${list.product_k_name}</span>
								</div>
								<div class="mypage-review-hidden">
									<div class="mypage-review-hidden2">
										<div class="mypage-review-hidden3"><span>${list.customer_content}</span></div>
										<div><span class="revise">수정</span> <span class="delete">삭제</span></div>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<%@ include file="customer_myPageEmpty.jsp" %>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</body>
</html>