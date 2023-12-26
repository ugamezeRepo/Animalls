<%@page import="dto.MemberDto"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String memberId = (String)session.getAttribute("memberId");
	MemberDto dto = MemberDao.getInstance().getData(memberId);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애니모올즈</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
	<main>
		<h1 class="form-header">회원 정보 수정</h1>
		
		<form action="update.jsp" method="post">
			<section id="infoSection">
				<!-- 기본 정보 -->
				<div class="container">
					<h3>기본정보</h3>
					<!-- 아이디 -->
					<div>
						<label class="form-label" for="memberId">아이디</label>
						<input class="form-control" type="text" id="memberId" value="여기 수정해라!!" readonly />
					</div>
					
					<!-- 비밀번호 -->
					<div>
						<label class="form-label" for="password">비밀번호</label>
						<input class="form-control" type="password" id="password" />
					</div>
					<div>
						<label class="form-label" for="password2">비밀번호 확인</label>
						<input class="form-control" type="password" id="password2" />
					</div>
					
					<!-- 이름 -->
					<div>
						<label class="form-label" for="name">이름</label>
						<input class="form-control" type="text" id="name" />
					</div>
					
					<!-- 주소 -->
					<div>
						<label class="form-label" for="deliveryId">주소</label>
						<input class="form-control" type="text" id="deliveryId" />
					</div>
					
					<!-- 휴대전화 -->
					<div>
						<label class="form-label" for="phoneNumber">휴대전화</label>
						<input class="form-control" type="tel" id="phoneNumber" />
					</div>
					
					<!-- 이메일 -->
					<div>
						<label class="form-label" for="email">이메일</label>
						<input class="form-control" type="email" id="email" />
					</div>
					<!-- 이메일 인증 -->
					<fieldset>
						<legend>이메일 인증</legend>
						<input class="form-check-input" type="radio" id="receiveEmail" name="emailStatus" value="receiveEmail" />
						<label class="form-check-label" for="receiveEmail">수신함</label>
						<input class="form-check-input" type="radio" id="unreceiveEmail" name="emailStatus" value="unreceiveEmail" />
						<label class="form-check-label" for="unreceiveEmail">수신 안 함</label>
					</fieldset>
				</div>
				
				
				<h3>추가정보</h3>
				<!-- 프로필 이미지 -->
				<div>
					<label class="form-label" for="profileImage">프로필 이미지</label>
					<input class="form-control" type="text" id="profileImage" />
				</div>
				
				<!-- 닉네임 -->
				<div>
					<label class="form-label" for="nickname">닉네임</label>
					<input class="form-control" type="text" id="nickname" />
				</div>
			</section>
			
			<section id="btnSection">
				<div>
					<button class="btn btn-primary" id="resetBtn" type="reset">초기화</button>
					<button class="btn btn-primary" id="submitBtn" type="submit">회원정보수정</button>
				</div>
				
				<div>
					<button class="btn btn-primary" id="cancelBtn" type="button">
						<a href="${pageContext.request.contextPath}/" style="text-decoration: none;">취소</a>
					</button>
				</div>
			</section>
		</form>
	</main>	
</body>
</html>