<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매자 배송 목록 페이지</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="/Animalls/css/footer.css" />
</head>
<body>

	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="index" name="current" />
	</jsp:include>
	
	<div class="container">
		<h3>배송현황</h3>
		
		<div id="sort1">
			<select>
				<option value="" selected disabled hidden>배송상태</option>
				<option value="">준비중</option>
				<option value="">배송완료</option>
				<option value="">배송지연</option>
				<option value="">반품</option>
				<option value="">교환</option> 
			</select> 
			
			
			배송번호순 수량순 구매금액순 배송시작일자순 배송완료일자순
 		</div>
		
		<table>
			<thead>
				<tr>
					<th>배송번호</th>
					<th>보내는분</th>
					<th>받는분</th>
					<th>이미지</th>
					<th>상품정보</th>
					<th>수량</th>
					<th>상품구매금액</th>
					<th>배송상태</th>
					<th>배송시작일자</th>
					<th>배송완료일자</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>홍길동1</td>
					<td>길동1</td>
					<td>-</td>
					<td>-</td>
					<td>30</td>
					<td>50,000 원</td>
					<td>상품준비중</td>
					<td>-</td>
					<td>-</td>
				</tr>	
				<tr>
					<td>2</td>
					<td>홍길동2</td>
					<td>길동2</td>
					<td>-</td>
					<td>-</td>
					<td>25</td>
					<td>40,000 원</td>
					<td>배송완료</td>
					<td>23/12/03</td>
					<td>23/12/05</td>
				</tr>
				<tr>
					<td>3</td>
					<td>홍길동3</td>
					<td>길동3</td>
					<td>-</td>
					<td>-</td>
					<td>37</td>
					<td>80,000 원</td>
					<td>배송지연</td>
					<td>23/12/06</td>
					<td>23/12/08</td>
				</tr>
				<tr>
					<td>4</td>
					<td>홍길동4</td>
					<td>길동4</td>
					<td>-</td>
					<td>-</td>
					<td>10</td>
					<td>200,000 원</td>
					<td>반품</td>
					<td>23/12/07</td>
					<td>23/12/09</td>
				</tr>
				<tr>
					<td>5</td>
					<td>홍길동5</td>
					<td>길동5</td>
					<td>-</td>
					<td>-</td>
					<td>5</td>
					<td>500,000 원</td>
					<td>교환</td>
					<td>23/12/08</td>
					<td>23/12/10</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<jsp:include page="/include/footer.jsp">
		<jsp:param value="index" name="current" />
	</jsp:include>
	
	
</body>
</html>