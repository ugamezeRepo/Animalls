<%@page import="dao.ProductDao"%>
<%@page import="dto.ProductDto"%>
<%@page import="dao.UserDao"%>
<%@page import="dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String seller_id=request.getParameter("seller_id");
	int product_id=Integer.parseInt(request.getParameter("product_id"));
	String title=request.getParameter("title");
	String category=request.getParameter("category");
	int org_price=Integer.parseInt(request.getParameter("org_price"));
	int sale_price=Integer.parseInt(request.getParameter("sale_price"));
	String sales_state=request.getParameter("sales_state");
	String description=request.getParameter("description");
	
	ProductDto dto=new ProductDto();
	dto.setSeller_id(seller_id);
	dto.setProduct_id(product_id);
	dto.setTitle(title);
	dto.setCategory(category);
	dto.setOrg_price(org_price);
	dto.setSale_price(sale_price);
	dto.setSales_state(sales_state);
	dto.setDescription(description);
	
	boolean isSuccess=ProductDao.getInstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/seller/productUpdate.jsp</title>
</head>
<body>
<<<<<<< HEAD
	<h1>알림</h1>
	<%if(isSuccess){%>
		<p>
			<strong><%=seller_id %></strong> 님이 작성한 글이 수정되었습니다.
			<a href="ProductList.jsp">판매 목록보기</a>
		</p>
		<%}else{%>
			<p>
				수정에 실패하였습니다. 다시 수정해주세요.
				<a href="productUpdate_form.jsp?product_id=<%=product_id%>">다시 작성하기</a>
			</p>
		<%}%>
<!-- 상품을 올리는 페이지입니다 -->
=======
	<div class="container">
		<form action="${pageContext.request.contextPath}/seller/productUpdate.jsp" method="post">
			<div>
				<label for="product_id">상품번호</label>
				<input type="text" id="product_id" name="product_id" value="<%=dto.getProductId()%>" readonly/>
				<br />
			</div>
			<div>
				<label for="thumbnail">이미지</label>
				<br />
			</div>
			<div>
				<label for="title">상품명 : </label> 
				<input type="text" id="title" name="title" value="<%=dto.getTitle()%>"/>
				<br />
			</div>
			<div>
				<label for="category">카테고리 : </label>  
					<select id="category" name="category" value="<%=dto.getCategory()%>">
						<option value="food">음식</option>
						<option value="clothes">옷</option>
						<option value="bath">목욕용품</option>
					</select>
				<br />
			</div>
			<div>
				<label for="org_price">판매가 : </label> 
				<input type="text" id="org_price" name="org_price" value="<%=dto.getOrgPrice()%>"/>
				<br />
			</div>
			<div>
				<label for="sale_price">할인가격 : </label> 
				<input type="text" id="sale_price" name="sale_price" value="<%=dto.getSalePrice()%>"/>
				<br />
			</div>
			<div>
				<label for="sales_state">상품상태 : </label>
					<select id="sales_state" name="sales_state" value="<%=dto.getSalesState()%>">
						<option value="on_sale">판매중</option>
						<option value="sold_out">품절</option>
						<option value="sales_end">판매종료</option>
					</select>
				<br />
				<br />
			</div>
			<div>
				<label for="description">비고 : </label> 
				<textarea id="description" name="description" value="<%=dto.getDescription()%>" cols="20" rows="5" 
				 style="resize: none; vertical-align:middle;"/></textarea>
				<button type="submit" style="vertical-align:bottom">수정하기</button>
				<button type="reset">취소</button>
			</div>
		</form>
	</div>
>>>>>>> 76e8cc70d79e82e229d71a5366574614db9762fc
</body>
</html>