<%@page import="util.URLConverter"%>
<%@page import="java.io.UnsupportedEncodingException"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<% 
	String src = URLConverter.decode(request.getParameter("src"));
	String title = URLConverter.decode(request.getParameter("title"));
	String subTitle = URLConverter.decode(request.getParameter("subTitle"));
	String description = URLConverter.decode(request.getParameter("description"));
%>


<div class="col" style="height: 320px;">
	<div  class="w-100 h-100 p-4">
		<div class="w-100 h-100 border d-flex flex-column justify-content-center mx-auto text-center">
			<div style="height: 48px;">
				<img class="object-fit-contain" src="<%= src %>" />
			</div>
			
			<div class="h5"><%= title %></div>
			<div class="h6"><%= subTitle %></div>
			<small>
				<%= description %>
			</small>
			
		</div>
	</div>
</div>