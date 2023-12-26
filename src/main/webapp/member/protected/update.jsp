<%@page import="dao.MemberDao"%>
<%@page import="dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String memberId = (String)session.getAttribute("memberId");
	MemberDto dto = new MemberDto();
	dto.setMemberId(memberId);
	dto.setDeliveryId(deliveryId);
	dto.setPassword(password);
	dto.setName(name);
	dto.setNickname(nickname);
	dto.setPhoneNumber(phoneNumber);
	dto.setEmail(email);
	dto.setEmailVerified(emailVerified);
	
	boolean isSuccess = MemberDao.getInstance().update(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애니모올즈 회원 정보 수정</title>
</head>
<body>
	<script>
		const isSuccess = <%=isSuccess %>;
		if (isSuccess) {
			alert("회원정보 수정이 완료되었습니다.");
			location.href = "update_form.jsp";
		} else {
			alert("회원정보 수정에 실패했습니다.");
			location.href = "update_form.jsp";
		}
	</script>
</body>
</html>