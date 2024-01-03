<%@page import="dao.ProductDao"%>
<%@page import="dto.ProductDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int productId=Integer.parseInt(request.getParameter("productId"));
	ProductDto dto=ProductDao.getInstance().getData(productId);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매자 상품 수정 페이지</title>
<link rel="stylesheet" href="/Animalls/css/common.css" />
<link rel="stylesheet" href="/Animalls/css/bootstrap.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

<style>
/* Chrome, Safari, Edge, Opera */
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

/* Firefox */
input[type=number] {
  -moz-appearance: textfield;
}
</style>

</head>
<body class="d-flex flex-column">
	<jsp:include page="/include/navbar.jsp">
			<jsp:param value="seller" name="current"/>
	</jsp:include>
	<div class="container my-3 head p-3 border flex-grow-1">
		<h3>판매자 상품 수정</h3><hr />
		<form action="${pageContext.request.contextPath}/seller/productUpdate.jsp" method="post">
			<div class="mb-2">
				<label for="product_id">상품번호</label>
				<input class="form-control" type="text" id="productId" name="productId" value="<%=dto.getProductId()%>" readonly/>
			</div>
			<div class="form-group row mb-2">
				<label for="col-sm-2 thumbnail">썸네일</label>
				<div class="col-sm-5">
					<input type="file" name="thumbnail" class="form-control">
				</div>
			</div>
			<div class="mb-2">
				<label for="title">상품명  </label> 
				<input class="form-control" type="text" id="title" name="title" value="<%=dto.getTitle()%>"/>
			</div>
			<div class="mb-2">
				<label for="category">카테고리  </label>  
				<select class="form-control"  id="category" name="category" value="<%=dto.getCategory()%>">
					<option value="food">음식</option>
					<option value="clothes">옷</option>
					<option value="bath">목욕용품</option>
				</select>
			</div>
			<div class="mb-2">
				<label for="org_price">판매가  </label> 
				<input class="form-control" type="text" id="orgPrice" name="orgPrice" value="<%=dto.getOrgPrice()%>">
			</div>
			<div class="mb-2">
				<label for="salePrice">할인가격  </label> 
				<input class="form-control" type="text" id="salePrice" name="salePrice" value="<%=dto.getSalePrice()%>">
			</div>
			<div class="mb-2">
				<label for="salesState">상품상태  </label>
				<select class="form-control"  id="salesState" name="salesState" value="<%=dto.getSalesState()%>">
					<option value="onSale">판매중</option>
					<option value="soldOut">품절</option>
					<option value="salesEnd">판매종료</option>
				</select>
			</div>
			<div class="mb-2">
				<label for="description">설명</label> 
				<textarea 
					id="description" name="description" cols="20" rows="5" 
					style="resize: none; vertical-align:middle;" class="form-control"/></textarea>
			</div>
			<button class="btn btn-primary my-4" type="submit" style="vertical-align:bottom">수정하기</button>
			<button class="btn btn-primary my-4" type="reset" style="vertical-align:bottom">취소</button>
		</form>
	</div>
	<jsp:include page="/include/footer.jsp">
		<jsp:param value="seller" name="current"/>
	</jsp:include>
	
</body>
</html>