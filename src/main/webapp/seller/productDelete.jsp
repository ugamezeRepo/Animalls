<%@page import="dao.ProductDao"%>
<%@page import="dto.ProductDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int product_id=Integer.parseInt(request.getParameter("product_id"));
	
	ProductDto dto=new ProductDto();
	dto.setProduct_id(product_id);
	boolean isSuccess=ProductDao.getInstance().delete(dto);
	
	if(isSuccess){
		String cPath=request.getContextPath();
		
		response.sendRedirect(cPath+"/seller/productList.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/seller/productDelete.jsp</title>
</head>
<body>
	
</body>
</html>