<%@page import="dao.CartItemDao"%>
<%@page import="dto.ProductOptionDto"%>
<%@page import="util.SessionManager"%>
<%@page import="dto.MemberDto"%>
<%@page import="dto.CartItemDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDto memberDto = SessionManager.getMember(request);
	int productId = Integer.parseInt(request.getParameter("productId"));
	String[] ids = request.getParameterValues("id");
	String[] descriptions = request.getParameterValues("description");
	String[] additionals = request.getParameterValues("additional");
	String[] counts = request.getParameterValues("count");
	String[] prices = request.getParameterValues("price");
	for(int i=0;i<ids.length;i++){
		CartItemDto cartDto = new CartItemDto();
		cartDto.setBuyerId(memberDto.getMemberId());
		cartDto.setProductId(productId);
		cartDto.setOptionId(Integer.parseInt(ids[i]));
		cartDto.setAmount(Integer.parseInt(counts[i]));
		CartItemDao.getInstance().insert(cartDto);
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/cart/cartInsert.jsp</title>
</head>
<body>
	<script>
	location.href="${pageContext.request.contextPath}/cart/cart.jsp";
	</script>
</body>
</html>