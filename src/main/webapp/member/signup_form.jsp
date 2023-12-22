<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous" ></script>
</head>
<body>
	<main>
		<h1 class="form-header">회원가입</h1>
		
		<form action="signup.jsp" method="post">
			<!-- 회원 정보 -->
			<section id="infoSection">
				<!-- 기본 정보 -->
				<div class="container">
					<h3>기본정보</h3>
					<!-- 아이디 -->
					<div class="mb-2">
						<label class="form-label" for="memberId">아이디</label>
						<input class="form-control" type="text" name="memberId" id="memberId" />
						<small class="form-text">5글자~10글자 이내로 입력하세요</small>
						<div class="valid-feedback">사용 가능한 아이디입니다.</div>
						<div class="invalid-feedback">사용할 수 없는 아이디입니다.</div>
					</div>
					
					<!-- 비밀번호 -->
					<div class="mb-2">
						<label class="form-label" for="password">비밀번호</label>
						<input class="form-control" type="password" name="password" id="password" />
						<div class="form-text">특수문자를 하나 이상 추가하세요.</div>
						<div class="invalid-feedback">비밀번호를 확인하세요.</div>
					</div>
					<div class="mb-2">
						<label class="form-label" for="password2">비밀번호 확인</label>
						<input class="form-control" type="password" id="password2" />
					</div>
					
					<!-- 이름 -->
					<div class="mb-2">
						<label class="form-label" for="name">이름</label>
						<input class="form-control" type="text" name="name" id="name" />
					</div>
		
					<!-- 주소 -->
					<div class="mb-2">
						<label class="form-label" for="deliveryId">주소</label>
						<input class="form-control" type="text" name="deliveryId" id="deliveryId" />
					</div>
					
					<!-- 휴대전화 -->
					<div class="mb-2">
						<label class="form-label" for="phoneNumber">휴대전화</label>
						<input class="form-control" type="tel" name="phoneNumber" id="phoneNumber" />
					</div>
					
					<!-- 이메일 -->
					<div class="mb-2">
						<label class="form-label" for="email">이메일</label>
						<input class="form-control" type="email" name="email" id="email" />
						<!-- 이메일 인증 -->
						<button class="btn btn-primary">이메일 인증</button>
					</div>
				</div>
				
				<!-- 추가 정보 -->
				<div class="container">
					<h3>추가정보</h3>
					<!-- 프로필 이미지 -->
					<div class="mb-2">
						<label class="form-label" for="profileImage">이미지</label>
						<input class="form-contrl" type="image" name="profileImage" id="profileImage" />
					</div>
					
					<!-- 닉네임 -->
					<div class="mb-2">
						<label class="form-label" for="nickname">닉네임</label>
						<input class="form-contrl" type="text" name="nickname" id="nickname" />
					</div>
				</div>
			</section>
			
			<!-- 버튼 -->
			<section id="btnSection">
				<div class="container">
					<div class="mb-1">
						<button class="btn btn-primary" id="resetBtn" type="reset">초기화</button>
						<button class="btn btn-primary" id="submitBtn" type="submit">회원정보수정</button>
					</div>
					<div class="mb-1">
						<a href="${pageContext.request.contextPath}/" style="text-decoration: none;">
							<button class="btn btn-primary" id="cancelBtn" type="button">취소</button>
						</a>
					</div>
				</div>
			</section>
		</form>
	</main>
	
	<script>
		// 유효성 검사 변수 선언
		let isValid = {
			memberId: false,
			password: false,
			name: false,
			deliveryId: false,
			phoneNumber: false,
			email: false,
			nickname: false
		}
		
		// 모든 유효성 유효 여부
		const checkForm = () => {
			return Object.values(isValid).every(e => {e === true})
				? document.getElementById("submitBtn").removeAttribute("disabled")
				: document.getElementById("submitBtn").setAttribute("disabled", "");
		}
		
		// 아이디 유효성 검사
		const reg_memberId = /^.{5,10}$/;
		const id = document.getElementById("memberId");
		id.addEventListener("blur", ()=>{
			if (!reg_memberId.test(id.value)) {
				id.classList.add("is-invalid");
				isValid.memberId = false;
				return;
			}
			fetch("${pageContext.request.contextPath}/member/check_memberId.jsp?member=" + id.value)
			.then(res => res.json())
			.then(data => {
				id.classList.remove({"is-valid", "is-invalid"});
				if (data.canUse) {
					id.classList.add("is-valid");
					isValid.id = true;
				} else {
					id.classList.add("is-invalid");
					isValid.id = false;
				}
				checkForm();
			});
		});
		
		// 비밀번호 유효성 검사
		const reg_password = /[\W]/;
		const checkPwd = () => {
			let pwd = document.getElementById("password");
			let pwd2 = document.getElementById("password2");
			pwd.classList.classList.remove({"is-valid", "is-invalid"});
			if (!reg_password.test(pwd.value) || !reg_password.test(pwd2.value)) {
				pwd.classList.add("is-invalid");
				isValid.password = false;
				checkForm();
				return;
			}
			
			if (pwd.value == pwd2.value) {
				pwd.classList.add("is-valid");
				isValid.password = false;
			} else {
				pwd.classList.add("is-invalid");
				isValid.password = true;
			}
		}
		
		// 이름 유효성 검사
		
		//
		
		// 이메일 유효성 검사
		const reg_email = /@/;
		const email = document.getElementById("email");
		email.addEventListener("input", e => {
			email.classList.remove({"is-valid", "is-invalid"});
			if (reg_email.test(email.value)) {
				email.classList.add("is-valid");
				isValid.email = true;
			} else {
				email.classList.add("is-invalid");
				isValid.email = false;
			}
		});
	</script>

</body>
</html>