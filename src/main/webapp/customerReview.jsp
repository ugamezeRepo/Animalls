<%@page import="dto.FileDto"%>
<%@page import="java.util.List"%>
<%@page import="dao.FileDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	final int PAGE_ROW_COUNT=5;
	//하단 페이지 몇개씩 표시할 것인지
	final int PAGE_DISPLAY_COUNT=5;
	int pageNum=1;
	String strPageNum=request.getParameter("pageNum");
	if(strPageNum !=null){
		pageNum=Integer.parseInt(strPageNum);
	}
	int startRowNum =1+(pageNum-1)*PAGE_ROW_COUNT;
	int endRowNum=pageNum*PAGE_ROW_COUNT;
	
	//하단 시작 페이지 번호 
	int startPageNum = 1 + ((pageNum-1)/PAGE_DISPLAY_COUNT)*PAGE_DISPLAY_COUNT;
	//하단 끝 페이지 번호
	int endPageNum=startPageNum+PAGE_DISPLAY_COUNT-1;
	//전체 글의 갯수
	int totalRow=FileDao.getInstance().getCount();
	//전체 페이지의 갯수 구하기
	int totalPageCount=(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);
	//끝 페이지 번호가 이미 전체 페이지 갯수보다 크게 계산되었다면 잘못된 값이다.
	if(endPageNum > totalPageCount){
		endPageNum=totalPageCount; //보정해 준다. 
	}
	//보여줄 페이지에 맞는 목록만 얻어오기
	List<FileDto> list=FileDao.getInstance().getList(startRowNum, endRowNum);
	String id=(String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#myform fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
	}
	#myform fieldset legend{
	    text-align: right;
	}
	#myform input[type=radio]{
	    display: none;
	}
	#myform label{
	    font-size: 3em;
	    color: transparent;
	    text-shadow: 0 0 0 #f0f0f0;
	}
	#myform label:hover{
	    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
	}
	#myform label:hover ~ label{
	    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
	}
	#myform input[type=radio]:checked ~ label{
	    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
	}
	#reviewContents {
	    width: 100%;
	    height: 150px;
	    padding: 10px;
	    box-sizing: border-box;
	    border: solid 1.5px #D3D3D3;
	    border-radius: 5px;
	    font-size: 16px;
	    resize: none;
	}
	/* ul 의 기본 스타일제거*/
	.page-list{
		margin: 0;
		padding: 0;
		list-style-type: none;
	}
	
	.page-list li{
		float: left; /* li 가 필요한 만큼의 폭만 차지하면서 가로로 배치 되도록 */
		padding: 5px;
	}
	
	.page-list li:hover{
		background-color: #cecece;
	}
	
	.page-list li a{
		color: #000;
		text-decoration: none;
	}
	
	.page-list li.active a{
		color: red;
		text-decoration: underline;
		font-weight: bold;
	}
	.paging-container {
    /* 페이징 부분에 대한 스타일을 지정 */
    margin-bottom: 75px; /* 예시: 페이징 부분과 다음 내용 간의 간격 조절 */
}
</style>
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="include/navbar.jsp"></jsp:include>
	<div class="container">
		<h1>Review</h1>
		<hr style="border-top: 2px solid black; margin-top: 10px;"> <!-- 검정색 선 추가 -->
		<nav id="navbar-example2" class="navbar bg-body-tertiary px-3 mb-3">
		  <ul class="nav nav-pills">
		    <li class="nav-item ms-auto">
		      <a class="nav-link" href="#scrollspyHeading1">최신순</a>
		    </li>
		    <li class="nav-item ms-auto">
		      <a class="nav-link" href="#scrollspyHeading2">추천순</a>
		    </li>
		    <li class="nav-item dropdown ms-auto">
		      <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Dropdown</a>
		      <ul class="dropdown-menu">
		        <li><a class="dropdown-item" href="#scrollspyHeading3">Third</a></li>
		        <li><a class="dropdown-item" href="#scrollspyHeading4">Fourth</a></li>
		        <li><hr class="dropdown-divider m-0"></li>
		        <li><a class="dropdown-item" href="#scrollspyHeading5">Fifth</a></li>
		      </ul>
		    </li>
		  </ul>
		</nav>
		<hr style="border-top: 2px solid black; margin-bottom: 10px;"> <!-- 검정색 선 추가 -->
		<div class="dropdown">
		  <button class="btn btn-sm btn-success dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
		    별점순
		  </button>
		  <ul class="dropdown-menu">
		    <li><button class="dropdown-item" type="button">별5점</button></li>
		    <li><button class="dropdown-item" type="button">별4점</button></li>
		    <li><button class="dropdown-item" type="button">별3점</button></li>
		    <li><button class="dropdown-item" type="button">별2점</button></li>
		    <li><button class="dropdown-item" type="button">별1점</button></li>
		  </ul>
		</div>
		<div>
			<form action="protected/review_insert.jsp" class="mb-3" name="myform" id="myform" method="post">
				<fieldset>
					<span class="text-bold">별점을 선택해주세요</span>
					<input type="radio" name="reviewStar" value="5" id="rate5">
					<label for="rate5">★</label>
					<input type="radio" name="reviewStar" value="4" id="rate4">
					<label for="rate4">★</label>
					<input type="radio" name="reviewStar" value="3" id="rate3">
					<label for="rate3">★</label>			
					<input type="radio" name="reviewStar" value="2" id="rate2">
					<label for="rate2">★</label>
					<input type="radio" name="reviewStar" value="1" id="rate1">
					<label for="rate1">★</label>		
				</fieldset>
				<textarea class="col-auto form-control mb-2" type="text" id="reviewContents" name="content"
						  placeholder="잘좀써줘" readonly></textarea>	
				<button type="submit" class="btn btn-success">수정</button>	
				<button type="submit" class="btn btn-danger">삭제</button>	
			</form> 
		</div><%-- 여기까지 쓴글 목록입니다 --%>
		<div class="paging-container">
			<ul class="page-list">
				<c:if test="${startPageNum ne 1 }">
					<li>
						<a href="list.jsp?pageNum=<%=startPageNum-1%>">Prev</a>
					</li>
				</c:if>
				<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
					<c:choose>
						<c:when test="${i eq param.pageNum}">
							<li class="active">
								<a href="list.jsp?pageNum=${i}">${i}</a>
							</li>
						</c:when>
						<c:otherwise>
							<li>
								<a href="list.jsp?pageNum=${i}">${i}</a>
							</li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${endPageNum lt totalPageCount}">
					<li>
						<a href="list.jsp?pageNum=<%=endPageNum+1%>">Next</a>
					</li>
				</c:if>
			</ul>
		</div>
		
		<div> 
			<form action="protected/review_insert.jsp" class="mb-3" name="myform" id="myform" method="post">
				<fieldset>
					<span class="text-bold">별점을 선택해주세요</span>
					<input type="radio" name="reviewStar" value="5" id="rate5">
					<label for="rate5">★</label>
					<input type="radio" name="reviewStar" value="4" id="rate4">
					<label for="rate4">★</label>
					<input type="radio" name="reviewStar" value="3" id="rate3">
					<label for="rate3">★</label>			
					<input type="radio" name="reviewStar" value="2" id="rate2">
					<label for="rate2">★</label>
					<input type="radio" name="reviewStar" value="1" id="rate1">
					<label for="rate1">★</label>		
				</fieldset>
				<textarea class="col-auto form-control mb-2" type="text" id="reviewContents" name="content"
						  placeholder="잘좀써줘" ></textarea>	
				<button type="submit" class="btn btn-success">제출</button>	
			</form> 
		</div><%-- 제출할폼 입니다 --%>
	</div>

	<jsp:include page="include/footer.jsp"></jsp:include>		
</body>
<script>
	if(id===null){
		document.querySelector("#myform").addEventLister("click",()=>{
			contet
		})
	}
</script>
</html>