<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매자 주문 목록 페이지</title>
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
<style>
button:not(.btnSearch){
		border:none;
		padding: 1px;
		background:none;
		width:5px;
	}
#sort1{
		 padding: 10px;
	}
.btnSearch{
		border:none;
		margin-left:5px;
}

.bar{
		color:#e2e2e2;
	}
	
th, td {
  		 text-align: center;
  		 vertical-align: middle;
  		 font-size: 13px;
	}
</style>
<body>

	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="index" name="current" />
	</jsp:include>
	
		<div class="container my-3 head p-3 border">
			<h3>주문현황</h3>
			<hr />
		
			<div id="sort1" class="topMenu flex justify-content-start border">
			<input type="date" />
					<span>~</span>
			<input type="date" /><span class="bar"> |</span>
			<input type="search" /><button class="btnSearch" type="submit">검색</button>
	 		</div> 
			
			<table id="a" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>주문번호<button>↑</button><button>↓</button></th>
					<th>우편번호</th>
					<th>주소</th>
					<th>상세주소</th>
					<th>결제수단</th>
					<th>요청사항</th>
					<th>주문일자<button>↑</button><button>↓</button></th>
					<th>주문상품번호</th>
					<th>옵션번호</th>
					<th>수량<button>↑</button><button>↓</button></th>
				</tr>
			 </thead>
			 <tbody>
			 	<tr>
					<td>1</td>
					<td>01241</td>
					<td>충청남도 서산시 지곡면 관장골길 57-19</td>
					<td>-</td>
					<td>-</td>
					<td>직접 수령하겠습니다.</td>
					<td>2023-12-20</td>
					<td>4075304892</td>
					<td>1</td>
					<td>2</td>
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