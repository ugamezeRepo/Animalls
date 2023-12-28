<%@page import="dto.ReviewDto"%>
<%@page import="dao.ReviewDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	String content = request.getParameter("content");
	String id =(String)session.getAttribute("id");
	String thumbnail =request.getParameter("thumbnail");
	
	int likeCount=0;
	int productId= Integer.parseInt(request.getParameter("product_id"));
	ReviewDto dto = new ReviewDto();
	ReviewDao.getInstance().insert(dto);
	*/

	int rating = Integer.parseInt(request.getParameter("reviewStar"));

	System.out.println(rating);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>