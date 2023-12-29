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
<style>
	.btn-group{
		 width: 1px;
  		 padding: 1px;
  		 background-color: white;
	}
	th, td {
  		 text-align: center;
	}
	#sort1{
		 padding: 10px;
	}
	.btn{
		 font-size: 7px;
	}
	.bar{
		color:#e2e2e2;
	}
	
	button:not(.btnSearch){
		border:none;
		padding: 1px;
		background:none;
		width:5px;
	}
	.btnSearch{
		border:none;
		margin-left:5px;
	}
</style>
</head>
<body>

	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="index" name="current" />
	</jsp:include>
	
	<div class="container my-3 head p-3 border">
		<h3>배송현황</h3>
		<hr />
		
		<div id="sort1" class="topMenu flex justify-content-start border">
		<!-- <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
		  <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
		  <label class="btn" for="btnradio1">번호↑</label>
		
		  <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
		  <label class="btn" for="btnradio2">번호↓</label><p class="bar">|</p>
		</div>
		
		<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
		  <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off" checked>
		  <label class="btn" for="btnradio3">수량↑</label>
		
		  <input type="radio" class="btn-check" name="btnradio" id="btnradio4" autocomplete="off">
		  <label class="btn" for="btnradio4">수량↓</label><p class="bar">|</p>
		</div>
		
		<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
		  <input type="radio" class="btn-check" name="btnradio" id="btnradio5" autocomplete="off" checked>
		  <label class="btn" for="btnradio5">구매금액↑</label>
		
		  <input type="radio" class="btn-check" name="btnradio" id="btnradio6" autocomplete="off">
		  <label class="btn" for="btnradio6">구매금액↓</label><p class="bar">|</p>
		</div>
		
		<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
		  <input type="radio" class="btn-check" name="btnradio" id="btnradio7" autocomplete="off" checked>
		  <label class="btn" for="btnradio7">시작일자↑</label>
		
		  <input type="radio" class="btn-check" name="btnradio" id="btnradio8" autocomplete="off">
		  <label class="btn" for="btnradio8">시작일자↓</label><p class="bar">|</p>
		</div>
			
		<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
		  <input type="radio" class="btn-check" name="btnradio" id="btnradio9" autocomplete="off" checked>
		  <label class="btn" for="btnradio9">완료일자↑</label>
		
		  <input type="radio" class="btn-check" name="btnradio" id="btnradio10" autocomplete="off">
		  <label class="btn" for="btnradio10">완료일자↓</label><span class="bar">|</span>
		</div> -->
		<input type="date" />
				<span>~</span>
		<input type="date" /><span class="bar"> |</span>
		<input type="search" /><button class="btnSearch" type="submit">검색</button>
 		</div> 
 		<br />
 		
		<table id="a" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>배송번호 <button>↑</button><button>↓</button></th>
					<th>보내는분</th>
					<th>받는분</th>
					<th>이미지</th>
					<th>상품정보</th>
					<th>수량 <button>↑</button><button>↓</button></th>
					<th>상품구매금액 <button>↑</button><button>↓</button></th>
					<th>
						<select>
							<option value="" selected disabled hidden>배송상태</option>
							<option value="">준비중</option>
							<option value="">배송완료</option>
							<option value="">배송지연</option>
							<option value="">반품</option>
							<option value="">교환</option> 
						</select>
					</th>
					<th>배송시작일자 <button>↑</button><button>↓</button></th>
					<th>배송완료일자 <button>↑</button><button>↓</button></th>
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
	
	<script>
	
	</script>	
	
</body>
</html>