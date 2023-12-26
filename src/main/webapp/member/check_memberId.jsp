<%@page import="dao.MemberDao"%>
<%@page import="dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String memberId = request.getParameter("memberId");
	MemberDto dto = MemberDao.getInstance().getData(memberId);
	boolean canUse = dto == null;
%>
{"canUse": <%=canUse %>}