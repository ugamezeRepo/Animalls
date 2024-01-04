<%@page import="dto.ProductDto"%>
<%@page import="dao.ProductDao"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	int productId = Integer.parseInt(request.getParameter("productId"));
	ProductDto product = ProductDao.getInstance().getData(productId);
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
	<div class="container head p-3 my-4 border flex-grow-1">
		<h3>판매자 상품 등록</h3><hr />
		<form id="product-form" name="newProduct">
			<input type="hidden" name="product_id" value="<%= productId %>"></input>
			
			
			<div class="form-group row mb-2">
				<label for="col-sm-2 thumbnail">썸네일</label>
				<div class="col-sm-5">
					<input type="file" name="thumbnail" class="form-control">
				</div>
			</div>
			<div class="mb-2">
				<label for="title">상품명  </label> 
				<input type="text" id="title" name="title" class="form-control" value="<%= product.getTitle() %>"/>
			</div>
			<div class="mb-2">
				<label for="category">카테고리  </label>  
				<select id="category" name="category" class="form-control" >
					<option value="food" <%= "food".equals(product.getCategory()) ? "selected" : "" %> >음식</option>
					<option value="clothes" <%= "clothes".equals(product.getCategory()) ? "selected" : "" %>>옷</option>
					<option value="bath" <%= "bath".equals(product.getCategory()) ? "selected" : "" %>>목욕용품</option>
				</select>
			</div>
			<div class="mb-2">
				<label for="org_price">판매가  </label> 
				<input type="number" id="org_price" name="org_price" class="form-control" value="<%= product.getOrgPrice() %>"/>
			</div>
			<div class="mb-2">
				<label for="sale_price">할인가격 (할인을 하지 않으려면 0을 입력해주세요) </label> 
				<input type="number" id="sale_price" name="sale_price" class="form-control" value="<%= product.getSalePrice() %>"/>		
			</div>
			<div class="mb-2">
				<label for="sales_state">상품상태  </label>
				<select id="sales_state" name="sales_state" class="form-control">
					<option value="on_sale" <%= "on_sale".equals(product.getSalesState()) ? "selected" : "" %>>판매중</option>
					<option value="sold_out" <%= "sold_out".equals(product.getSalesState()) ? "selected" : "" %>>품절</option>
					<option value="sales_end" <%= "sales_end".equals(product.getSalesState()) ? "selected" : "" %>>판매종료</option>
				</select>
			</div>
			<div class="mb-2">
				<label for="description">설명</label> 
				<textarea 
					id="description" name="description" cols="20" rows="5" 
					style="resize: none; vertical-align:middle;" class="form-control"/><%= product.getDescription() %></textarea>
				<button class="btn btn-primary my-4" type="submit" style="vertical-align:bottom">등록</button>
			</div>
		</form>
	</div>
	<jsp:include page="/include/footer.jsp">
		<jsp:param value="seller" name="current"/>
	</jsp:include>
	
	
	<script>
	const form = document.querySelector('#product-form');
	const fileInput = document.querySelector('input[type=file]') 

	
	function getBase64(file) {
		return new Promise((resolve, reject)=> {
			var reader = new FileReader();
			reader.readAsDataURL(file); // 인코딩 작업
			reader.onload = function () {
				resolve(reader.result);
			};	
			reader.onerror = function (error) {
			     reject(error);
			};
	   })
	}
		
	form.addEventListener('submit', async (e) => {
		e.preventDefault(); 
		const formdata = new FormData(form); 
		formdata.delete('thumbnail');
		
		if (fileInput.files.length > 0) {
			const thumbnail = await getBase64(fileInput.files[0]); 
			formdata.append('thumbnail', thumbnail); 
		}
		const resp = await fetch('/Animalls/api/product/update', {
			method: 'post', 
			headers: {
				'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8',
			},
			body: new URLSearchParams(formdata).toString(), 
			credentials: 'include', 
		});
		const data = await resp.json(); 
		
		if (data.success) {
			alert(data.message); 
			document.location.href = '/Animalls/seller/productList.jsp';
		} else {
			alert(data.message); 
		}
	});
	</script>
</html>