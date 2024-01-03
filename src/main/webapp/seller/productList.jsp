<%@page import="dao.ProductDao"%>
<%@page import="dto.ProductDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<ProductDto> list = ProductDao.getInstance().getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/seller/productList.jsp</title>
<link rel="stylesheet" href="/Animalls/css/common.css" />
<link rel="stylesheet" href="/Animalls/css/bootstrap.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</head>
<body class="d-flex flex-column">
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="seller" name="current"/>
	</jsp:include>
	<div class="container my-4 border flex-grow-1"><br />
		<h1>판매자 상품 리스트</h1>
		<hr />
		<a href="productUploadForm.jsp">상품 추가</a>
		<table class="table">
			<thead>
				<tr>
					<th>상품번호</th>
					<th>이미지</th>
					<th>상품명</th>
					<th>카테고리</th>
					<th>판매가</th>
					<th>할인가격</th>
					<th>상품상태</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
			<%for(ProductDto tmp:list){ %>
				<tr>
					<td><%=tmp.getProductId() %></td>
					<td><%=tmp.getThumbnail() %></td>
					<td><%=tmp.getTitle() %></td>
					<td><%=tmp.getCategory() %></td>
					<td><%=tmp.getOrgPrice() %></td>
					<td><%=tmp.getSalePrice() %></td>
					<td><%=tmp.getSalesState() %></td>
					<td><%=tmp.getDescription() %></td>
					<td><a class="text-decoration-none" href="updateform.jsp?productId=<%=tmp.getProductId()%>">수정</a></td>
					<td><a class="text-decoration-none" href="productDelete.jsp?productId=<%=tmp.getProductId()%>">삭제</a></td>
					<!--   
					<td>
						<form action="productDelete.jsp" method="post">
							<input type="hidden" name="productId" value="<%=tmp.getProductId()%>"/>
						</form>
					</td>
					-->
				</tr>
			<%} %>
			</tbody>
		</table>
	</div>
	<jsp:include page="/include/footer.jsp">
		<jsp:param value="seller" name="current"/>
	</jsp:include>
</body>
</html>