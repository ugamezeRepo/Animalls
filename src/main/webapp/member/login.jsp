<%@page import="java.net.URLEncoder"%>
<%@page import="dao.MemberDao"%>
<%@page import="dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String memberId = request.getParameter("memberId");
	String password = request.getParameter("password");
	String isSave = request.getParameter("isSave");
	MemberDto dto = MemberDao.getInstance().getData(memberId);
	
	boolean isLoginSuccess = false;
	if (dto != null) {
		if (dto.getPassword().equals(password)) {
			session.setAttribute("memberId", memberId);
			session.setAttribute("password", password);
			String asd = (String)session.getAttribute("memberId");
			String asd2 = (String)session.getAttribute("password");
			System.out.printf("ID: %s || PWD: %s%n", asd, asd2);
			isLoginSuccess = true;
		}
	}
	String url = request.getParameter("url");
	String encodedUrl = URLEncoder.encode(url);
	
	if (isSave != null) {
		Cookie cook1 = new Cookie("savedMemberId", memberId);
		Cookie cook2 = new Cookie("savedPassword", password);
		cook1.setMaxAge(60*60*24*7);
		cook2.setMaxAge(60*60*24*7);
		response.addCookie(cook1);
		response.addCookie(cook2);
	} else {
		Cookie cook1 = new Cookie("savedMemberId", "");
		Cookie cook2 = new Cookie("savedPassword", null);
		cook1.setMaxAge(0);
		cook2.setMaxAge(0);
		response.addCookie(cook1);
		response.addCookie(cook2);		
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>
	<script>
		<%if (isLoginSuccess) { %>
			location.href = "${pageContext.request.contextPath}/tmp.jsp";
		<%} else { %>
			alert("실패");
			location.href = "${pageContext.request.contextPath}/member/login_form.jsp";
		<%} %>
	</script>
</body>
</html>