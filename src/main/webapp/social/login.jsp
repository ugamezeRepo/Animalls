<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.6.0/kakao.min.js" integrity="sha384-6MFdIr0zOira1CHQkedUqJVql0YtcZA1P0nbPrQYJXVJZUkTk/oX4U9GhUIs3/z8" crossorigin="anonymous"></script>
</head>

<body>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="login" name="current"/>
	</jsp:include>
	

	<div class="container my-4 py-4">
		<h1>로그인</h1>
		<hr />
		<div class="d-flex justify-content-center">
			<form action="#" style="width: 600px;">
				<div class="form-group my-2">
					<label for="id">아이디</label>
					<input class="form-control" type="text" name="id" id="id" />	
				</div>
				<div class="form-group my-2">
					<label for="pw">비밀번호</label>
					<input class="form-control" type="text" name="pw" id="pw"/>
				</div>		
				
				<div class="d-block">
					<a class="text-decoration-none" href="#">아이디 찾기</a>
					<a class="text-decoration-none" href="#">비밀번호 찾기</a>
				</div>
				
				<div class="d-flex justify-content-end">
					<input class="btn btn-secondary" type="submit" value="로그인" />
				</div>
							
			</form>			
		</div>
		<hr />
		<div id="social-login" class="d-flex justify-content-center my-4">
			<a id="kakao-login-btn" href="javascript:loginWithKakao()">
			  <img src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="222"
			    alt="카카오 로그인 버튼" />
			</a>
			<p id="token-result"></p>	
		</div>	
	</div>
	
	<jsp:include page="/include/footer.jsp">
		<jsp:param value="login" name="current"/>
	</jsp:include>
	
	
	
	<script>
	  Kakao.init('ef92a29740c9a6b3265d100c512dda87');

	  function loginWithKakao() {
	    Kakao.Auth.authorize({
	      redirectUri: 'http://localhost:8888/Animalls/oauth/login',
	    });
	  }
	
	  // 아래는 데모를 위한 UI 코드입니다.
	  displayToken()
	  function displayToken() {
	    var token = getCookie('authorize-access-token');
	
	    if(token) {
	      Kakao.Auth.setAccessToken(token);
	      Kakao.Auth.getStatusInfo()
	        .then(function(res) {
	          if (res.status === 'connected') {
	            document.getElementById('token-result').innerText
	              = 'login success, token: ' + Kakao.Auth.getAccessToken();
	          }
	        })
	        .catch(function(err) {
	          Kakao.Auth.setAccessToken(null);
	        });
	    }
	  }
	
	  function getCookie(name) {
	    var parts = document.cookie.split(name + '=');
	    if (parts.length === 2) { return parts[1].split(';')[0]; }
	  }
	</script>
</body>
</html>