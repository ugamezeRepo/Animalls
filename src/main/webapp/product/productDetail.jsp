<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productDetail.jsp</title>
</head>
<body>
	<div class="wrap">
		<div class="container">
			<div class="detailArea">
				<div class="imgArea">
					<%--각 항목별로 div 메인이미지, 다른이미지(ui)--%>
				</div>
				<div class="infoArea">
					<%--경로 --%>
					<div>
						<ol>
							<li><a href="${pageContext.request.contextPath}/index.jsp">home</a></li>
							<li><a href="${pageContext.request.contextPath}/productList.jsp">제품</a>
						</ol>
					</div>
					<%-- title--%>
					<div class="titleArea">
						<h1>상품명</h1>
						<%--한다면 여기에 찜(잠시 보류)--%>
					</div>
					<div class="priceArea">
						<p>할인가(정가)<span>원</span></p>
						<p>정가</p>
					</div>
					<table><%--옵션 --%>
					
					</table>
					<div class="totalProducts">
						<table>
						
						</table>
					</div>
					<div class="totalPrice">
						
					</div>
					<div class="btnWrap">
						<a href="${pageContext.request.contextPath}/cart.jsp">장바구니</a>
						<a href="${pageContext.request.contextPath}/payment.jsp">구매하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>