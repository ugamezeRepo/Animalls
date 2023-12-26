<%@page import="util.URLConverter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sellerId = "minsu1234";
	String sellerName = "김민수";
	int nowSellCount = 123; 
	int unProcessedCount = 67;
	int recentlySell = 2000000;
	String unCalculated = "3,000,000";
	int unProcessedClaimCount = 15;
	int unCheckedOrder=23;
	int completedOrder=100;
	int beforeDelivery=35;
	int afterDelivery=60;
	int completedAnswer=20;
	int recentReview=48;
	int ongoingEvent=2;
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매자 마이페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/Animalls/css/footer.css" />

<style>
.seller-block {
	height: 200px;
}

.pics {      /* 전체 케러셀 */
            width: 600px;
            float: left;
            position: relative;
            left: 50%;
            object-fit: cover;
        }

.carousel-inner {
            width: auto;
            height: 250px; /* 이미지 높이 변경 */
        }

.carousel-item {
            width: auto;
            height: 100%;
        }

.d-block {
            display: block;
            width: auto;
            height: 100%;
        }
        
.subUl {
    list-style: none;
}

#footer {


	display: inline-block;

}

</style>
</head>
<body>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="index" name="current"/>
	</jsp:include>
	
	<main>
	<div class="border d-flex" style="float:left; 	width: 290px; word-break:break-all; display: inline-block; text-align: left;">
		<div class="border container" style="float:left; width: 290px; word-break:break-all; display: inline-block; text-align: left;">
		상세메뉴
		</div>
			<br />
			<div class="border container" style="float:left; width: 290px; word-break:break-all; display: inline-block; text-align: left;">
			회원정보
				<ul class="subUl">
					<li style="none"><a href="">정보수정</a></li>
					<li><a href="">탈퇴하기</a></li>
				</ul>
			</div>
			<div class="border container" style="float:left; width: 290px; word-break:break-all; display: inline-block; text-align: left;">
			상품관리
				<ul class="subUl">
					<li><a href="">상품DB</a></li>
				</ul>
			</div>
			<div class="border container" style="float:left; width: 290px; word-break:break-all; display: inline-block; text-align: left;">
			상점관리
				<ul class="subUl">
					<li><a href="">상세페이지(예시)</a></li>
					<li><a href="">이벤트/프로모션(예시)</a></li>
				</ul>
			</div>
			<div class="border container" style="float:left; width: 290px; word-break:break-all; display: inline-block; text-align: left;">
			주문배송
				<ul class="subUl">
					<li><a href="">주문관리</a></li>
					<li><a href="">배송관리</a></li>
				</ul>
			</div>
			<div class="border container" style="float:left; width: 290px; word-break:break-all; display: inline-block; text-align: left;">
			고객관리
				<ul class="subUl">
					<li><a href="">고객 클레임(예시)</a></li>
					<li><a href="">문의(예시)</a></li>
					<li><a href="">리뷰</a></li>
					<li><a href="">단골고객(예시)</a></li>
					<li><a href="">블랙컨슈머(예시)</a></li>
				</ul>
			</div>
			<div class="border container" style="float:left; width: 290px; word-break:break-all; text-align: left;">
			판매정산
				<ul class="subUl">
					<li><a href="">판매정산DB(예시)</a></li>
				</ul>
			</div>
	</div>
	
	
	<div class="container my-2">
		<strong>판매자 마이페이지</strong>
		<hr />
		<div class="border my-3 d-flex">
			<div class="border-right border-secondary m-2 p-2" style="float:left; text-indent:85px;">
				<img width="64" src="${pageContext.request.contextPath}/assets/shop-blocks/2.png" alt="seller-image"/>
				<a href=""><img width="18" src="${pageContext.request.contextPath}/assets/bronze-medal.png" alt="seller-image"/></a><a href=""><strong class="text-primary">
				<%= sellerName %></strong></a> 판매자님 안녕하세요.<br>
			</div>
				
				
				
			<div class="row row-cols-2" style="margin:auto;  text-align: center;">
				<div class="col">판매중인 상품 <a href=""><%= nowSellCount %></a> 개</div>
				<div class="col">미처리된 상품 <a href=""><%= unProcessedCount%></a> 개</div>
				<div class="col">미처리된 클레임(예시) <a href=""><%= unProcessedClaimCount%></a> 개</div>
				<div class="col">정산예정 금액(예시) <a href=""><%= unCalculated%></a> 원</div>
			</div>
		</div>
	
	<div class="row">
		<div class="d-flex flex-wrap justify-content-between">
		<div class="border w-full">

				<div class="bg-light p-2" style="text-indent:6px">
					<strong class="text-dark">메인 메뉴</strong>
				</div>
				
				<div class="d-flex w-full">
				
					<div class="flex-grow-1 text-center my-auto">
						<jsp:include page="/include/components/shopblock.jsp">
						    <jsp:param name="src" value="/Animalls/assets/shop-blocks/9.png"/>
						    <jsp:param name="title" value="<%= URLConverter.encode(\"주문 현황\") %>"/>
						    <jsp:param name="subTitle" value="<%= URLConverter.encode(\"주문목록을 검색 및 조회 할 수 있습니다.\") %>"/>
						    <jsp:param name="description" value="<%= URLConverter.encode(\"<br> 확인하지 않은 주문 23 건 <br>처리완료한 주문 8 건\") %>"/>
						</jsp:include>
					</div>
					
					<div class="flex-grow-1 text-center my-auto">
						<jsp:include page="/include/components/shopblock.jsp">
						    <jsp:param name="src" value="/Animalls/assets/shop-blocks/10.png"/>
						    <jsp:param name="title" value="<%= URLConverter.encode(\"배송 현황\") %>"/>
						    <jsp:param name="subTitle" value="<%= URLConverter.encode(\"배송현황을 검색 및 조회 할 수 있습니다.\") %>"/>
						    <jsp:param name="description" value="<%= URLConverter.encode(\"<br> 배송전,배송지연 주문 2 건 <br>배송완료 주문 15 건\") %>"/>
						</jsp:include>
						<a href="#" class="text-decoration-none font-weight-bolder"></a>
					</div>
					
					<div class="flex-grow-1 text-center my-auto">
						<jsp:include page="/include/components/shopblock.jsp">
						    <jsp:param name="src" value="/Animalls/assets/shop-blocks/7.png"/>
						    <jsp:param name="title" value="<%= URLConverter.encode(\"고객 관리(예시)\") %>"/>
						    <jsp:param name="subTitle" value="<%= URLConverter.encode(\"고객관리 및 문의에 대한 답변을 할 수 있습니다.\") %>"/>
						    <jsp:param name="description" value="<%= URLConverter.encode(\"<br> 답변완료 전 문의 1 건 <br>최근 리뷰보기 25 건\") %>"/>
						</jsp:include>
						<a href="#" class="text-decoration-none font-weight-bolder"></a>
					</div>
					
					<div class="flex-grow-1 text-center my-auto">
						<jsp:include page="/include/components/shopblock.jsp">
						    <jsp:param name="src" value="/Animalls/assets/shop-blocks/12.png"/>
						    <jsp:param name="title" value="<%= URLConverter.encode(\"기타(예시)\") %>"/>
						    <jsp:param name="subTitle" value="<%= URLConverter.encode(\"기타 사항들을 관리 할 수 있습니다.\") %>"/>
						    <jsp:param name="description" value="<%= URLConverter.encode(\"<br>진행중인 이벤트/프로모션 2 건 <br>통계\") %>"/>
						</jsp:include>
	
					</div>
				</div>
				</div>
			</div>
		</div>
		</div>

	<div class="container">
		<strong class="text-primary"><%= sellerName %></strong>님의 가장 잘팔린 상품들 <small>3개월 기준(예시)</small>
	</div>
		
	<div class="container" style="text-align: center">
			<div id="foodCarousel" class="carousel slide" data-bs-touch="false" style=float:left;>
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="${pageContext.request.contextPath}/assets/shop-blocks/11.png" class="d-block w-10" alt="best-food">
				    </div>
				    <div class="carousel-item">
				      <img src="${pageContext.request.contextPath}/assets/shop-blocks/12.png" class="d-block w-10" alt="best-food">
				    </div>
				    <div class="carousel-item">
				      <img src="${pageContext.request.contextPath}/assets/shop-blocks/13.png" class="d-block w-10" alt="best-food">
				    </div>
				  </div>
				  <button class="carousel-control-prev" type="button" data-bs-target="#foodCarousel" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				  </button>
				  <button class="carousel-control-next" type="button" data-bs-target="#foodCarousel" data-bs-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Next</span>
				  </button>
				  음식
			 </div>
			  
			 <div id="clothesCarousel" class="carousel slide" data-bs-touch="false" style=float:left;>
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="${pageContext.request.contextPath}/assets/shop-blocks/4.png" class="d-block w-10" alt="best-clothes">
				    </div>
				    <div class="carousel-item">
				      <img src="${pageContext.request.contextPath}/assets/shop-blocks/5.png" class="d-block w-10" alt="best-clothes">
				    </div>
				    <div class="carousel-item">
				      <img src="${pageContext.request.contextPath}/assets/shop-blocks/6.png" class="d-block w-10" alt="best-clothes">
				    </div>
				  </div>
				  <button class="carousel-control-prev" type="button" data-bs-target="#clothesCarousel" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				  </button>
				  <button class="carousel-control-next" type="button" data-bs-target="#clothesCarousel" data-bs-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Next</span>
				  </button>
				  의류
			 </div>
			 
			 <div id="bathCarousel" class="carousel slide" data-bs-touch="false" style=float:left;>
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="${pageContext.request.contextPath}/assets/shop-blocks/11.png" class="d-block w-10" alt="best-bath">
				    </div>
				    <div class="carousel-item">
				      <img src="${pageContext.request.contextPath}/assets/shop-blocks/12.png" class="d-block w-10" alt="best-bath">
				    </div>
				    <div class="carousel-item">
				      <img src="${pageContext.request.contextPath}/assets/shop-blocks/13.png" class="d-block w-10" alt="best-bath">
				    </div>
				  </div>
				  <button class="carousel-control-prev" type="button" data-bs-target="#bathCarousel" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				  </button>
				  <button class="carousel-control-next" type="button" data-bs-target="#bathCarousel" data-bs-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Next</span>
				  </button>
				  목욕용품
			  </div>		
		
	
			
	</div>
	</main>
	  
	  
	  
	  
	  	<footer>
		  <jsp:include page="/include/footer.jsp">
			<jsp:param value="index" name="current"/>
		  </jsp:include>
	  	</footer>
	  
	  
	  
</body>
</html>