<%@page import="java.net.URLEncoder"%>
<%@page import="dao.MemberDao"%>
<%@page import="dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1. 폼 전송되는 member_id, password를 읽어와서
	String memberId = request.getParameter("memberId");
	String password = request.getParameter("password");
	String isSave = request.getParameter("isSave");
	
	System.out.printf("id: %s, pwd: %s%n%n%n%n", memberId, password);
	
	// 2. member_id에 해당하는 회원정보를 MemberDao 객체를 이용해서 얻어와서
	MemberDto dto = MemberDao.getInstance().getData(memberId);
	
	// 3. 실제로 존재하는 member_id이고, password도 일치하는 지 비교해서
	boolean isLoginSuccess = false;
	if (dto != null) {
		if (dto.getPassword().equals(password)) {
			// 로그인처리 해주기
			session.setAttribute("memberId", memberId);
			isLoginSuccess = true;
		}
	}
	// 로그인 후 가야할 목적지 정보
	String url = request.getParameter("url");
	// 로그인 실패를 대비해서 목적지 정보를 인코딩한 결과도 준비한다.
	String encodedUrl = URLEncoder.encode(url);
	
	if (isSave != null) {
		// 아이디 비밀번호를 쿠키로 응답하고 1주일동안 유지되도록 한다.
		Cookie cook1 = new Cookie("savedMemberId", memberId);
		Cookie cook2 = new Cookie("savedPassword", password);
		cook1.setMaxAge(60*60*24*7);
		cook2.setMaxAge(60*60*24*7);
		response.addCookie(cook1);
		response.addCookie(cook2);
	} else {
		// 특정 키값으로 저장된 쿠키값 삭제하기 (value에는 아무 값이나 넣어도 상관없다.)
		Cookie cook1 = new Cookie("savedMemberId", "");
		Cookie cook2 = new Cookie("savedPassword", null);
		cook1.setMaxAge(0);
		cook2.setMaxAge(0);
		response.addCookie(cook1);
		response.addCookie(cook2);		
	}
	
	// 4. 일치하면 로그인 처리, 아니면 "member_id 혹은 password가 틀려요"라 응답한다. 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		하이
	</div>
	<script>
		const isLoginSuccess = <%=isLoginSuccess %>;
		console.log(isLoginSuccess);
		<%if (isLoginSuccess) { %>
			alert("성공");
			// location.href = "${pageContext.request.contextPath}/tmp.jsp";
		<%} else { %>
			alert("실패");
			// location.href = "${pageContext.request.contextPath}/member/login_form.jsp";
		<%} %>
	</script>
</body>
</html>