<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	int totalEventCount = 8; 
	String sampleName = "샘플 이벤트 제목";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="event" name="current"/>
	</jsp:include>

	<div class="container py-4">
		<h1 class="my-4 fw-bold">이벤트</h1>
		
		<div id="category-btn-group" class="btn-group my-4">
		  <a href="#" class="btn btn-primary active" aria-current="page">진행중인 이벤트</a>
		  <a href="#" class="btn btn-primary">종료된 이벤트</a>
		</div>

		<div class="row my-4 g-0">		
			<% for (int i = 1 ; i <= totalEventCount; i++) { %>
				<div class="col pr-4 pb-3" style="max-width: 440px;">
					<a href="eventDetail.jsp" class="text-decoration-none">
						<img src="/Animalls/assets/event/<%=i %>.png" alt="" />	
					</a>
					
					<div>
						<div class="fs-5 fw-bold"><a href="eventDetail.jsp" class="text-reset text-decoration-none"><%= sampleName %></a></div>
						<div class="text-secondary">2022-01-01</div>
					</div>	
				</div>
			
			<%} %>
		</div>
	</div>

	
	<jsp:include page="/include/footer.jsp">
		<jsp:param value="event" name="current"/>
	</jsp:include>
	
</body>
</html>