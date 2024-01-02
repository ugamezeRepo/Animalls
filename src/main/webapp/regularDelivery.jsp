<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	int totalProductCount = 40; 
	String sampleName = "[정기배송] 위장 닥터독 사료 2kg";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정기배송</title>
<link href="/Animalls/css/common.css" rel="stylesheet" />
<link href="/Animalls/css/bootstrap.css" rel="stylesheet" >
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>

	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="regularDelivery" name="current"/>
	</jsp:include>
	
	<div class="delivery-banner">
		<img class="w-100" src="/Animalls/assets/regular-delivery/regular-delivery-banner.jpg" alt="" />
	</div>
	<div class="container my-5 py-5">
		<h1>전체</h1>
		<hr />	
						
		<div id="category-btn-group" class="btn-group my-4">
		  <a href="#" class="btn btn-secondary active" aria-current="page">전체</a>
		  <a href="#" class="btn btn-secondary">사료</a>
		  <a href="#" class="btn btn-secondary">보양식</a>
		</div>
		
		<div>
			<div class="d-flex justify-content-between">
				<sub>총 <strong><%= totalProductCount %></strong>개 상품</sub>
				
				<select name="order-by" id="order-by">
					<option value="new">신상품</option>
					<option value="title">상품명</option>
					<option value="low-price">낮은가격순</option>
					<option value="high-price">높은가격순</option>
					<option value="rating">별점높은순</option>
				</select>
			</div>
		</div>
		
		<div class="row my-4 g-0">		
			<% for (int i = 0 ; i < totalProductCount; i++) { %>
				<div class="col pr-4" style="max-width: 320px;">
					<div >
						<img src="/Animalls/assets/regular-delivery/delivery-sample-img.png" alt="" />	
					</div>
					<div >
						<sub><%= sampleName %></sub>
						<div class="d-flex align-items-end">
							<div id="sale-price" class="fs-3 fw-bold my-0">33,000</div>
							<div id="org-price" class="fs-6 text-secondary text-decoration-line-through my-0 px-2">200,000</div>
							
						</div>
					</div>
				</div>
			
			<%} %>
		</div>
	</div>
	
	<jsp:include page="/include/footer.jsp">
		<jsp:param value="regularDelivery" name="current"/>
	</jsp:include>
</body>
</html>