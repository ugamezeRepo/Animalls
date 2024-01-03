<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매자 상품 등록</title>
<link rel="stylesheet" href="/Animalls/css/common.css" />
<link rel="stylesheet" href="/Animalls/css/bootstrap.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body class="d-flex flex-column">
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="seller" name="current"/>
	</jsp:include>
	<div class="container my-4 border flex-grow-1"><br />
		<h3>판매자 상품 등록</h3><hr />
		<form name="newProduct" action="${pageContext.request.contextPath}/seller/productUpload.jsp" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class for="col-sm-2 thumbnail">이미지 : </label>
				<div class="col-sm-5">
					<input type="file" name="thumbnail" class="form-control">
				</div>
				<br />
				<br />
			</div>
			<div>
				<label for="title">상품명 : </label> 
				<input type="text" id="title" name="title"/>
				<br />
				<br />
			</div>
			<div>
				<label for="category">카테고리 : </label>  
					<select id="category" name="category">
						<option value="food">음식</option>
						<option value="clothes">옷</option>
						<option value="bath">목욕용품</option>
					</select>
				<br />
				<br />
			</div>
			<div>
				<label for="org_price">판매가 : </label> 
				<input type="text" id="org_price" name="org_price"/>
				<br />
				<br />
			</div>
			<div>
				<label for="sale_price">할인가격 : </label> 
				<input type="text" id="sale_price" name="sale_price"/>
				<br />
				<br />
			</div>
			<div>
				<label for="sales_state">상품상태 : </label>
					<select id="sales_state" name="sales_state">
						<option value="on_sale">판매중</option>
						<option value="sold_out">품절</option>
						<option value="sales_end">판매종료</option>
					</select>
				<br />
				<br />
			</div>
			<div>
				<label for="description">비고 : </label> 
				<textarea id="description" name="description" cols="20" rows="5" 
				 style="resize: none; vertical-align:middle;"/></textarea>
				<button class="btn btn-primary" type="submit" style="vertical-align:bottom">등록</button>
			</div>
		</form>
	</div>
	<jsp:include page="/include/footer.jsp">
		<jsp:param value="seller" name="current"/>
	</jsp:include>
</body>
</html>