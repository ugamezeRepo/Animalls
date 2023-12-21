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
<title>product/productList.jsp</title>
</head>
<body>
<%--카테고리 구분, 카테고리페이지 *3 --%>
<%--(++)총 개수 표시, 정렬 --%>
<div class="container">
	<div class="category">
		<h3>Category</h3>
			<ul class="menuCategory">
				<li><a href="${pageContext.request.contextPath}/product/foodList.jsp">food</a></li>
				<li><a href="${pageContext.request.contextPath}/product/clothesList.jsp">clothes</a></li>
				<li><a href="${pageContext.request.contextPath}/product/bathList.jsp">bath</a></li>
			</ul>
	</div>
	<div class="product">
		<h3>Product</h3>
			<ul class="prdList">
				<%for(ProductDto tmp:list){ %>
				<li>
					<div class="thumbnail">
						<a href="${pageContext.request.contextPath}/product/productDetail.jsp?productId=<%=tmp.getProductId()%>">
							<img src="<%=tmp.getThumbnail() %>" width="100px" height="150px"/>
						</a>
					</div>
					<div class="description">
					 	<strong class="name">
					 		<a href="${pageContext.request.contextPath}/product/productDetail.jsp?productId=<%=tmp.getProductId()%>"><%=tmp.getTitle() %></a>
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
