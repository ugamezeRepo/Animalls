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
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
<%--카테고리 구분, 카테고리페이지 *3 --%>
<%--(++)총 개수 표시, 정렬 --%>
<div class="container">
	<div class="category">
		<ul class="menuCategory">
			<li ><!-- li*3 -->
				<a href=""><%--category 링크 --%>
					"Food"
				</a>
			</li>
		</ul>
	</div>
	<div class="product">
		<ul class="prdList">
			<%for(ProductDto tmp:list){ %>
			<li>
				<div class="thumbnail">
					<div class="inner"><%--클릭하면 뭔가 호출됨(장바구니, 찜) --%>
						<span class="basket">
							<img src="" alt="" />
						</span>
						<span class="wish">
							<img src="" alt="" />
						</span>
					</div>
					<a href="" name="<%=tmp.getProductId()%>">
						<img src="<%=tmp.getThumbnail()%>"/>
					</a>
				</div>
				<div class="description">
				 	<strong class="name">
				 		<a href=""><%=tmp.getTitle() %></a><!-- detail 링크 -->
				 	</strong>
				 	<ul class="price">
				 		<li>판매가</li>
				 		<li>정가</li>
				 	</ul>
				</div>
			</li>
			<%} %>
		</ul>
	</div>
</div>
</body>
</html>
