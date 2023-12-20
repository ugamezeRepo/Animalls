<%@page import="dao.ProductDao"%>
<%@page import="dto.ProductDto"%>
<%@page import="dao.UserDao"%>
<%@page import="dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String title=request.getParameter("title");
	String category=request.getParameter("category");
	int org_price=Integer.parseInt(request.getParameter("org_price"));
	int sale_price=Integer.parseInt(request.getParameter("sale_price"));
	String sales_state=request.getParameter("sales_state");
	String description=request.getParameter("description");
	
	ProductDto dto=new ProductDto();
	dto.setTitle(title);
	dto.setCategory(category);
	dto.setOrgPrice(org_price);
	dto.setSalePrice(sale_price);
	dto.setSalesState(sales_state);
	dto.setDescription(description);
	
	boolean isSuccess=ProductDao.getInstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/seller/productUpload.jsp</title>
</head>
<body>
	<script>
		<%if(isSuccess){%>
			alert("상품을 성공적으로 등록 했습니다.");
			location.href="${pageContext.request.contextPath}/seller/productList.jsp";
		<%}else{%>
			alert("등록에 실패하였습니다. 다시 등록해주세요.");
			location.href="${pageContext.request.contextPath}/seller/productUpload.jsp";
		<%}%>
	</script>
<!-- 상품을 올리는 페이지입니다 -->
</body>
</html>