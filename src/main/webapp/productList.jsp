<%@page import="java.util.List"%>
<%@page import="dao.ProductDao"%>
<%@page import="dto.ProductDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<ProductDto> list = ProductDao.getInstance().getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/productList.jsp</title>
</head>
<body>
<%--카테고리 구분, 카테고리페이지 *3 --%>
<%--(++)총 개수 표시, 정렬 --%>
<div class="container">
	<div class="category">
		<h3>Category</h3>
			<ul class="menuCategory">
				<li>food</li>
				<li>clothes</li>
				<li>bath</li>
			</ul>
	</div>
	<div class="product">
		<h3>Product</h3>
			<ul class="prdList">
				<%for(ProductDto tmp:list){ %>
				<li>
					<div class="thumbnail">
						<a href="${pageContext.request.contextPath}/productDetail.jsp?productId=<%=tmp.getProductId()%>">
							<img src="https://okdoctordog.com/web/product/big/202303/ac327ab3d8874c40784298ed18023e68.jpg"/>
						</a>
					</div>
					<div class="description">
					 	<strong class="name">
					 		<a href="${pageContext.request.contextPath}/productDetail.jsp?productId=<%=tmp.getProductId()%>"><%=tmp.getTitle() %></a>
					 	</strong>
					 	<ul class="price">
					 		<%if(tmp.getSalesState().equals("on_sale")) {%>
						 		<li><%=tmp.getSalePrice() %></li>
						 		<li><%=tmp.getOrgPrice() %></li>
					 		<%}else{ %>
					 			<li><%=tmp.getOrgPrice() %></li>
					 		<%} %>
					 	</ul>
					</div>
				</li>
				<%} %>
			</ul>
	</div>
</div>
</body>
</html>
