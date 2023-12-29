<%@page import="util.SessionManager"%>
<%@page import="dao.MemberDao"%>
<%@page import="dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String memberId = SessionManager.getInstance().getMemberId(request);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>
<body>
	<script>
		if (confirm("정말 탈퇴하시겠습니까?")) {
			<%MemberDao.getInstance().delete(memberId); %>
			<%session.invalidate(); %>
			alert("탈퇴가 완료되었습니다.");
			location.href = "${pageContext.request.contextPath}/";
		} else {
			location.href = "update_form.jsp";
		}
	</script>
</body>
</html>