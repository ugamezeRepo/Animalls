<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="login" name="current"/>
	</jsp:include>
	
	<div class="container">
		<h1>OAuth 로그인 정보</h1>
		<p>id : ${ info.id }</p>
		<p>nickname : ${ info.kakaoAccount.profile.nickname } </p>
		<div>
			썸네일
			<img src="${ info.kakaoAccount.profile.thumbnailImageUrl }" alt="" />
		</div>
	</div>
	
	<jsp:include page="/include/footer.jsp">
		<jsp:param value="login" name="current"/>
	</jsp:include>
</body>
</html>