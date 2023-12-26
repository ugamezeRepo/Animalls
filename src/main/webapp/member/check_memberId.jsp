<%@page import="dao.MemberDao"%>
<%@page import="dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- /user/check_id.jsp --%>
<%
	String memberId = request.getParameter("memberId");
	MemberDto dto= MemberDao.getInstance().getData(memberId);
	boolean canUse = false;
	if(dto == null){
		canUse = true;
	}
%>
{"canUse": <%=canUse %>}