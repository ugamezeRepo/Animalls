<%@page import="dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String title=request.getParameter("title");
	String category=request.getParameter("category");
	String org_price=request.getParameter("org_price");
	String sale_price=request.getParameter("sale_price");
	String sales_state=request.getParameter("sales_state");
	String description=request.getParameter("description");
	
	UserDto dto=new UserDto();
	dto.setTitle(title);
	dto.setCategory(title);
	dto.setOrg_price(title);
	dto.setTitle(title);
	dto.setTitle(title);
	dto.setTitle(title);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/seller/productUpload.jsp</title>
</head>
<body>
	
<!-- 상품을 올리는 페이지입니다 -->
</body>
</html>