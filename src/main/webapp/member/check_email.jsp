<%@page import="dto.MemberDto"%>
<%@page import="dao.MemberDao"%>
<%@page import="java.util.List"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="util.SendMail"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String email = request.getParameter("email");
	MemberDto dto = MemberDao.getInstance().getEmailData(email);
	boolean canUse = dto == null;
%>
{"canUse": <%=canUse %>}